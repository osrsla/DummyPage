//
//  MemoViewController.swift
//  dummyPage
//
//  Created by SR on 2023/09/22.
//

import CoreData
import Foundation
import UIKit

class MemoViewController: UIViewController {
    let memoView = MemoView()
    let tableView = UITableView()
    var tasks: [Task] = []

    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "dummyPage")
        container.loadPersistentStores { _, error in
            if let error = error {
                fatalError("Failed to load Core Data stack: \(error)")
            }
        }
        return container
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        fetchTasks()
        if tasks.isEmpty {
            createDefaultTask()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
}

private extension MemoViewController {
    func setup() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "TaskCell")
        tableView.allowsSelection = true
        
        view.backgroundColor = .systemBackground
        
        memoView.backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        memoView.todoButton.addTarget(self, action: #selector(todoButtonTapped), for: .touchUpInside)
        
        view.addSubview(memoView)
        view.addSubview(tableView)
        
        memoView.translatesAutoresizingMaskIntoConstraints = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            memoView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            memoView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            memoView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            memoView.heightAnchor.constraint(equalToConstant: 30),
            
            tableView.topAnchor.constraint(equalTo: memoView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
        ])
    }
    
    @objc
    func backButtonTapped() {
        dismiss(animated: true)
    }
    
    @objc
    func todoButtonTapped() {
        let alertController = UIAlertController(title: "새로운 Todo", message: "할 일을 입력하세요.", preferredStyle: .alert)
        alertController.addTextField { textField in
            textField.placeholder = "할 일"
        }
          
        let addAction = UIAlertAction(title: "추가", style: .default) { _ in
            if let title = alertController.textFields?.first?.text {
                let context = self.persistentContainer.viewContext
                let newTask = Task(context: context)
                newTask.id = UUID()
                newTask.title = title
                newTask.createDate = Date()
                newTask.modifyDate = Date()
                newTask.isCompleted = false

                self.saveContext()
                self.fetchTasks()
            }
        }
          
        let cancelAction = UIAlertAction(title: "취소", style: .cancel)
          
        alertController.addAction(addAction)
        alertController.addAction(cancelAction)
          
        present(alertController, animated: true, completion: nil)
    }
    
    func fetchTasks() {
        let context = persistentContainer.viewContext
        do {
            tasks = try context.fetch(Task.fetchRequest())
            tableView.reloadData()
        } catch {
            print("Failed to fetch tasks: \(error)")
        }
    }
    
    func saveContext() {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                print("Failed to save context: \(error)")
            }
        }
    }
    
    private func createDefaultTask() {
        let context = persistentContainer.viewContext
        let defaultTask = Task(context: context)
        defaultTask.title = "오늘 할일 끝!"
        defaultTask.createDate = Date()
        defaultTask.modifyDate = Date()
        defaultTask.isCompleted = false
           
        saveContext()
           
        fetchTasks()
    }
}

extension MemoViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TableViewCell
               
        let task = tasks[indexPath.row]
        cell.configure(with: task)
               
        if task.isCompleted {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
               
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tasks[indexPath.row].isCompleted.toggle()
        tableView.reloadRows(at: [indexPath], with: .automatic)
        saveContext()
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
       
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
       
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let taskToRemove = tasks[indexPath.row]
            let context = persistentContainer.viewContext
            context.delete(taskToRemove)
            saveContext()
               
            tasks.remove(at: indexPath.row)
               
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

//
//  InstarViewController.swift
//  dummyPage
//
//  Created by SR on 2023/09/21.
//

import Foundation
import UIKit

class InstarViewController: UIViewController {
    let firstView = FirstView()
    let secondView = SecondView()
    let collectionView = CollectionView()
    let thirdView = ThirdView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupStyle()
        setupLayout()
    }
}

private extension InstarViewController {
    func setupStyle() {
        view.backgroundColor = .systemBackground

        firstView.backButton.addTarget(self, action: #selector(backbuttonTapped), for: .touchUpInside)
    }

    func setupLayout() {
        view.addSubview(firstView)
        view.addSubview(secondView)
        view.addSubview(collectionView)

        view.addSubview(thirdView)

        firstView.translatesAutoresizingMaskIntoConstraints = false
        secondView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        thirdView.translatesAutoresizingMaskIntoConstraints = false

        thirdView.profileButton.addTarget(self, action: #selector(profileButtonTapped), for: .touchUpInside)

        NSLayoutConstraint.activate([
            firstView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            firstView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            firstView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
            firstView.heightAnchor.constraint(equalToConstant: 240),

            secondView.topAnchor.constraint(equalTo: firstView.bottomAnchor),
            secondView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            secondView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            secondView.heightAnchor.constraint(equalToConstant: 40),
            
            collectionView.topAnchor.constraint(equalTo: secondView.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: thirdView.topAnchor),
            

            thirdView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            thirdView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            thirdView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            thirdView.heightAnchor.constraint(equalToConstant: 50),

        ])
    }

    @objc
    func profileButtonTapped() {
        let profileVC = ProfileViewController()

        profileVC.modalPresentationStyle = .fullScreen
        present(profileVC, animated: true, completion: nil)
    }

    @objc
    func backbuttonTapped() {
        dismiss(animated: true)
    }
}

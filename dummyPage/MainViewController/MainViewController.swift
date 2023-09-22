//
//  MainViewController.swift
//  dummyPage
//
//  Created by SR on 2023/09/21.
//

import UIKit

class MainViewController: UIViewController {
    let mainView = MainView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setup()
    }
}

extension MainViewController {
    private func setup() {
        mainView.instarButton.addTarget(self, action: #selector(InstarButtonTapped), for: .touchUpInside)
        mainView.memoButton.addTarget(self, action: #selector(momoButtonTapped), for: .touchUpInside)

        view.addSubview(mainView)
        mainView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainView.topAnchor.constraint(equalTo: view.topAnchor),
            mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }

    @objc
    private func InstarButtonTapped() {
        let instarVC = InstarViewController()
        instarVC.modalPresentationStyle = .fullScreen
        present(instarVC, animated: true, completion: nil)
    }

    @objc
    private func momoButtonTapped() {
        let memoVC = MemoViewController()
        memoVC.modalPresentationStyle = .fullScreen
        present(memoVC, animated: true, completion: nil)
    }
}

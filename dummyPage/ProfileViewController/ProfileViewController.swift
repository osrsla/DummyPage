//
//  ProfileViewController.swift
//  dummyPage
//
//  Created by SR on 2023/09/22.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    let profileView = ProfileView()
    let user = User()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupStyle()
        setupLayout()
        profileView.userNameLabel.text = user.username
        profileView.userAgeLabel.text = user.userage
    }
}

private extension ProfileViewController {
    func setupStyle() {
        view.backgroundColor = .systemBackground

        profileView.backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
    }

    func setupLayout() {
        view.addSubview(profileView)

        profileView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            profileView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profileView.topAnchor.constraint(equalTo: view.topAnchor),
            profileView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

        ])
    }

    @objc
    func backButtonTapped() {
        dismiss(animated: true)
    }
}

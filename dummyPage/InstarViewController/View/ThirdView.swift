//
//  ThirdView.swift
//  dummyPage
//
//  Created by SR on 2023/09/22.
//

import Foundation
import UIKit

class ThirdView: UIView {
    let profileButton = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupStyle()
        setupLayout()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ThirdView {
    private func setupStyle() {
        backgroundColor = .systemBackground

        profileButton.setImage(UIImage(named: "profile"), for: .normal)
    }

    private func setupLayout() {
        addSubview(profileButton)

        profileButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            profileButton.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            profileButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            profileButton.widthAnchor.constraint(equalToConstant: 30),
            profileButton.heightAnchor.constraint(equalToConstant: 30),

        ])
    }
}

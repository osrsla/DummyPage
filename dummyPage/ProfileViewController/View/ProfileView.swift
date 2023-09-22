//
//  ProfileView.swift
//  dummyPage
//
//  Created by SR on 2023/09/22.
//

import Foundation
import UIKit

class ProfileView: UIView {
    let backButton = UIButton()
    let profileLabel = UILabel()
    
    let stackView = UIStackView()
    let userImage = UIImageView()
    let nameLabel = UILabel()
    let userNameLabel = UILabel()
    let ageLabel = UILabel()
    let userAgeLabel = UILabel()
    
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

private extension ProfileView {
    func setupStyle() {
        backgroundColor = .systemBackground
        
        backButton.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
        
        profileLabel.text = "Profile"
        profileLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        profileLabel.textColor = .label
        profileLabel.textAlignment = .center
        
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.alignment = .center
        
        userImage.image = UIImage(named: "userpicture")
        userImage.contentMode = .scaleAspectFit
        
        nameLabel.text = "User Name"
        nameLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        nameLabel.textColor = .secondaryLabel
        nameLabel.textAlignment = .center
        
        userNameLabel.text = "르탄이"
        userNameLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        userNameLabel.textColor = .label
        userNameLabel.textAlignment = .center
        
        ageLabel.text = "User Age"
        ageLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        ageLabel.textColor = .secondaryLabel
        ageLabel.textAlignment = .center
        
        userAgeLabel.text = "5 세"
        userAgeLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        userAgeLabel.textColor = .label
        userAgeLabel.textAlignment = .center
    }

    func setupLayout() {
        addSubview(backButton)
        addSubview(profileLabel)
        addSubview(stackView)
        stackView.addArrangedSubview(userImage)
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(userNameLabel)
        stackView.addArrangedSubview(ageLabel)
        stackView.addArrangedSubview(userAgeLabel)

        backButton.translatesAutoresizingMaskIntoConstraints = false
        profileLabel.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        userImage.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        ageLabel.translatesAutoresizingMaskIntoConstraints = false
        userAgeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 28),
            backButton.heightAnchor.constraint(equalToConstant: 30),
            backButton.widthAnchor.constraint(equalToConstant: 30),
            
            profileLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
            profileLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            profileLabel.heightAnchor.constraint(equalToConstant: 30),
            profileLabel.widthAnchor.constraint(equalToConstant: 200),
            
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.heightAnchor.constraint(equalToConstant: 500),
            
            userImage.heightAnchor.constraint(equalToConstant: 250),
            userImage.widthAnchor.constraint(equalToConstant: 250),
            
            nameLabel.heightAnchor.constraint(equalToConstant: 30),
            nameLabel.widthAnchor.constraint(equalToConstant: 300),
            
            userNameLabel.heightAnchor.constraint(equalToConstant: 30),
            userNameLabel.widthAnchor.constraint(equalToConstant: 300),
            
            ageLabel.heightAnchor.constraint(equalToConstant: 30),
            ageLabel.widthAnchor.constraint(equalToConstant: 300),
            
            userAgeLabel.heightAnchor.constraint(equalToConstant: 30),
            userAgeLabel.widthAnchor.constraint(equalToConstant: 300),
        ])
    }
}

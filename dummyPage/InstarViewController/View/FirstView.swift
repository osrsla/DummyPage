//
//  FirstView.swift
//  dummyPage
//
//  Created by SR on 2023/09/21.
//

import Foundation
import UIKit

class FirstView: UIView {
    let backButton = UIButton()
    
    let pageNamelabel = UILabel()
    let menuImage = UIImageView()
    var userPicImage = UIImageView()
    
    let followStackView = UIStackView()
    let postLabel = UILabel()
    let followerLabel = UILabel()
    let followingLabel = UILabel()
    
    let followButtonStackView = UIStackView()
    let postButton = UIButton()
    let followerButton = UIButton()
    let followingButton = UIButton()
    
    var userNameLabel = UILabel()
    var userDescriptionLabel = UILabel()
    var userWeblabel = UILabel()
    
    let buttonStackView = UIStackView()
    let followButton = UIButton(type: .system)
    let messageButton = UIButton(type: .system)
    let moreButton = UIButton(type: .system)

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

extension FirstView {
    private func setupStyle() {
        backgroundColor = .systemBackground
        
        backButton.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
        
        pageNamelabel.text = "nabaecamp"
        pageNamelabel.textColor = .label
        pageNamelabel.font = UIFont.preferredFont(forTextStyle: .headline)
        pageNamelabel.textAlignment = .center
        
        menuImage.image = UIImage(named: "menu")
        menuImage.contentMode = .scaleAspectFit
        
        userPicImage.image = UIImage(named: "userpicture")
        userPicImage.contentMode = .scaleAspectFit
        
        followStackView.axis = .horizontal
        followStackView.distribution = .fillEqually
        
        postLabel.text = "7"
        postLabel.textColor = .label
        postLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        postLabel.textAlignment = .center
        
        followerLabel.text = "0"
        followerLabel.textColor = .label
        followerLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        followerLabel.textAlignment = .center
        
        followingLabel.text = "0"
        followingLabel.textColor = .label
        followingLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        followingLabel.textAlignment = .center
        
        followButtonStackView.axis = .horizontal
        followButtonStackView.distribution = .fillEqually
        
        postButton.setTitle("post", for: .normal)
        postButton.setTitleColor(.label, for: .normal)
        postButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .footnote)
        
        followerButton.setTitle("follower", for: .normal)
        followerButton.setTitleColor(.label, for: .normal)
        followerButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .footnote)
        
        followingButton.setTitle("following", for: .normal)
        followingButton.setTitleColor(.label, for: .normal)
        followingButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .footnote)
        
        userNameLabel.text = "르탄이"
        userNameLabel.textColor = .label
        userNameLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        userNameLabel.textAlignment = .left
        userNameLabel.numberOfLines = 1
        
        userDescriptionLabel.text = "iOS Developer 🍎"
        userDescriptionLabel.textColor = .secondaryLabel
        userDescriptionLabel.font = UIFont.preferredFont(forTextStyle: .body)
        userDescriptionLabel.textAlignment = .left
        userDescriptionLabel.numberOfLines = 1
        
        userWeblabel.text = "spartacodingclub.kr"
        userWeblabel.textColor = .systemBlue
        userWeblabel.font = UIFont.preferredFont(forTextStyle: .footnote)
        userWeblabel.textAlignment = .left
        userWeblabel.numberOfLines = 1
        
        buttonStackView.axis = .horizontal
        buttonStackView.spacing = 8
        buttonStackView.distribution = .fillEqually
        
        followButton.setTitle("Follow", for: .normal)
        followButton.setTitleColor(.systemBackground, for: .normal)
        followButton.backgroundColor = .systemBlue
        followButton.layer.cornerRadius = 5
        followButton.layer.borderWidth = 0.5
        followButton.layer.borderColor = UIColor.systemGray3.cgColor
        
        messageButton.setTitle("Message", for: .normal)
        messageButton.setTitleColor(.label, for: .normal)
        messageButton.backgroundColor = .systemBackground
        messageButton.titleShadowColor(for: .normal)
        messageButton.setTitleShadowColor(.systemGray, for: .normal)
        messageButton.layer.cornerRadius = 5
        messageButton.layer.borderWidth = 0.5
        messageButton.layer.borderColor = UIColor.systemGray3.cgColor
        
        moreButton.setImage(UIImage(named: "chevron"), for: .normal)
        moreButton.tintColor = .label
        moreButton.layer.cornerRadius = 5
        moreButton.layer.borderWidth = 0.5
        moreButton.layer.borderColor = UIColor.systemGray3.cgColor
    }
    
    private func setupLayout() {
        addSubview(backButton)

        addSubview(pageNamelabel)
        addSubview(menuImage)
        addSubview(userPicImage)
        addSubview(followStackView)
        addSubview(followButtonStackView)
        addSubview(userNameLabel)
        addSubview(userDescriptionLabel)
        addSubview(userWeblabel)
        addSubview(buttonStackView)
        addSubview(moreButton)
        
        followStackView.addArrangedSubview(postLabel)
        followStackView.addArrangedSubview(followerLabel)
        followStackView.addArrangedSubview(followingLabel)
        
        followButtonStackView.addArrangedSubview(postButton)
        followButtonStackView.addArrangedSubview(followerButton)
        followButtonStackView.addArrangedSubview(followingButton)
        
        buttonStackView.addArrangedSubview(followButton)
        buttonStackView.addArrangedSubview(messageButton)

        backButton.translatesAutoresizingMaskIntoConstraints = false
        pageNamelabel.translatesAutoresizingMaskIntoConstraints = false
        menuImage.translatesAutoresizingMaskIntoConstraints = false
        userPicImage.translatesAutoresizingMaskIntoConstraints = false
        followStackView.translatesAutoresizingMaskIntoConstraints = false
        postLabel.translatesAutoresizingMaskIntoConstraints = false
        followerLabel.translatesAutoresizingMaskIntoConstraints = false
        followingLabel.translatesAutoresizingMaskIntoConstraints = false
        followButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        postButton.translatesAutoresizingMaskIntoConstraints = false
        followerButton.translatesAutoresizingMaskIntoConstraints = false
        followingButton.translatesAutoresizingMaskIntoConstraints = false
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        userDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        userWeblabel.translatesAutoresizingMaskIntoConstraints = false
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        moreButton.translatesAutoresizingMaskIntoConstraints = false
        followButton.translatesAutoresizingMaskIntoConstraints = false
        messageButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: topAnchor),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            backButton.heightAnchor.constraint(equalToConstant: 30),
            backButton.widthAnchor.constraint(equalToConstant: 30),
            
            pageNamelabel.topAnchor.constraint(equalTo: topAnchor),
            pageNamelabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            pageNamelabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            menuImage.topAnchor.constraint(equalTo: topAnchor),
            menuImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            menuImage.heightAnchor.constraint(equalToConstant: 30),
            
            userPicImage.topAnchor.constraint(equalTo: pageNamelabel.bottomAnchor, constant: 8),
            userPicImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            userPicImage.heightAnchor.constraint(equalToConstant: 100),
            userPicImage.widthAnchor.constraint(equalToConstant: 100),
            
            followStackView.topAnchor.constraint(equalTo: userPicImage.topAnchor, constant: 35),
            followStackView.leadingAnchor.constraint(equalTo: userPicImage.trailingAnchor),
            followStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            followStackView.heightAnchor.constraint(equalToConstant: 15),
            
            followButtonStackView.topAnchor.constraint(equalTo: followStackView.bottomAnchor, constant: 4),
            followButtonStackView.leadingAnchor.constraint(equalTo: userPicImage.trailingAnchor),
            followButtonStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            followButtonStackView.heightAnchor.constraint(equalToConstant: 15),
            
            userNameLabel.topAnchor.constraint(equalTo: userPicImage.bottomAnchor, constant: 14),
            userNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            userNameLabel.heightAnchor.constraint(equalToConstant: 15),
            userNameLabel.widthAnchor.constraint(equalToConstant: 50),
            
            userDescriptionLabel.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 5),
            userDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            userDescriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            userDescriptionLabel.heightAnchor.constraint(equalToConstant: 15),
           
            userWeblabel.topAnchor.constraint(equalTo: userDescriptionLabel.bottomAnchor, constant: 5),
            userWeblabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            userWeblabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            userWeblabel.heightAnchor.constraint(equalToConstant: 15),
            
            moreButton.topAnchor.constraint(equalTo: userWeblabel.bottomAnchor, constant: 5),
            moreButton.trailingAnchor.constraint(equalTo: trailingAnchor),
            moreButton.heightAnchor.constraint(equalToConstant: 30),
            moreButton.widthAnchor.constraint(equalToConstant: 30),
            
            buttonStackView.topAnchor.constraint(equalTo: userWeblabel.bottomAnchor, constant: 5),
            buttonStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            buttonStackView.trailingAnchor.constraint(equalTo: moreButton.leadingAnchor, constant: -8),
            buttonStackView.heightAnchor.constraint(equalToConstant: 30)

        ])
    }
}

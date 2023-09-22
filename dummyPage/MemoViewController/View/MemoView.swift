//
//  MemoView.swift
//  dummyPage
//
//  Created by SR on 2023/09/22.
//

import Foundation
import UIKit

class MemoView: UIView {
    let backButton = UIButton()
    let todoButton = UIButton()
    
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

private extension MemoView {
    func setupStyle() {
        backgroundColor = .systemBackground
        
        backButton.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
        todoButton.setImage(UIImage(systemName: "square.and.pencil"), for: .normal)
  
    }

    func setupLayout() {
        addSubview(backButton)
        addSubview(todoButton)

      
        backButton.translatesAutoresizingMaskIntoConstraints = false
        todoButton.translatesAutoresizingMaskIntoConstraints = false

      
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 28),
            backButton.heightAnchor.constraint(equalToConstant: 30),
            backButton.widthAnchor.constraint(equalToConstant: 30),
            
            todoButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
            todoButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            todoButton.heightAnchor.constraint(equalToConstant: 30),
            todoButton.widthAnchor.constraint(equalToConstant: 30),
        ])
    }
}

//
//  MainView.swift
//  dummyPage
//
//  Created by SR on 2023/09/22.
//

import Foundation
import UIKit

class MainView: UIView {
    
    let instarButton = UIButton()
    let memoButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension MainView {
    
    func setup(){
        instarButton.layer.borderColor = UIColor.white.cgColor
        instarButton.layer.borderWidth = 0.5
        
        memoButton.layer.borderColor = UIColor.white.cgColor
        memoButton.layer.borderWidth = 0.5

        addSubview(instarButton)
        addSubview(memoButton)

        instarButton.translatesAutoresizingMaskIntoConstraints = false
        memoButton.translatesAutoresizingMaskIntoConstraints = false

        instarButton.setTitle("인스타 화면으로 이동", for: .normal)

        memoButton.setTitle("메모 화면으로 이동", for: .normal)

        NSLayoutConstraint.activate([
            instarButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            instarButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            instarButton.trailingAnchor.constraint(equalTo: trailingAnchor),
            instarButton.heightAnchor.constraint(equalToConstant: 100),

            memoButton.topAnchor.constraint(equalTo: instarButton.bottomAnchor, constant: 10),
            memoButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            memoButton.trailingAnchor.constraint(equalTo: trailingAnchor),
            memoButton.heightAnchor.constraint(equalToConstant: 100),

        ])
    }
    
}

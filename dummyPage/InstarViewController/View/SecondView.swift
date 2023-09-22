//
//  SecondView.swift
//  dummyPage
//
//  Created by SR on 2023/09/22.
//

import Foundation
import UIKit

class SecondView: UIView {
    let dividerView = UIView()
    let gridButton = UIButton()
    let selectView = UIView()
    
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

extension SecondView {
    private func setupStyle() {
        
        dividerView.backgroundColor = .systemGray3
        
        gridButton.setImage(UIImage(named: "grid"), for: .normal)
        
        selectView.backgroundColor = .black
    }

    private func setupLayout() {
        addSubview(dividerView)
        addSubview(gridButton)
        addSubview(selectView)
        
        dividerView.translatesAutoresizingMaskIntoConstraints = false
        gridButton.translatesAutoresizingMaskIntoConstraints = false
        selectView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            dividerView.topAnchor.constraint(equalTo: topAnchor),
            dividerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            dividerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            dividerView.heightAnchor.constraint(equalToConstant: 0.5),
            
            gridButton.topAnchor.constraint(equalTo: dividerView.bottomAnchor, constant: 5),
            gridButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            gridButton.heightAnchor.constraint(equalToConstant: 30),
            gridButton.widthAnchor.constraint(equalToConstant: 30),
            
            selectView.bottomAnchor.constraint(equalTo: bottomAnchor),
            selectView.leadingAnchor.constraint(equalTo: leadingAnchor),
            selectView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.33),
            selectView.heightAnchor.constraint(equalToConstant: 1.5),
        
        ])
    }
}

//
//  TableViewCell.swift
//  dummyPage
//
//  Created by SR on 2023/09/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    static let reuseIdentifier = "TaskCell"
    
    let titleLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        titleLabel.font = UIFont.preferredFont(forTextStyle: .body)
    
        contentView.addSubview(titleLabel)
       
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
       
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            
        ])
    }
    
    func configure(with task: Task) {
        titleLabel.text = task.title
    }
}

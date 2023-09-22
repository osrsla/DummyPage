//
//  CollectionView.swift
//  dummyPage
//
//  Created by SR on 2023/09/22.
//
import Foundation
import UIKit

class CollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    init() {
        let layout = UICollectionViewFlowLayout()
               layout.minimumInteritemSpacing = 2 // 이미지 사이의 가로 간격
               layout.minimumLineSpacing = 2 // 이미지 사이의 세로 간격
               super.init(frame: .zero, collectionViewLayout: layout)
               setupCollectionView()
    }
        
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupCollectionView()
    }
        
    private func setupCollectionView() {
        delegate = self
        dataSource = self
        register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        backgroundColor = .clear
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        cell.contentView.backgroundColor = .systemGray5
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = (collectionView.bounds.width - 6) / 3 // 2*(간격) + 3*(이미지 너비)
               return CGSize(width: cellWidth, height: cellWidth)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
}

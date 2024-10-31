//
//  ChartView.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 11/1/24.
//

import UIKit

import SnapKit
import Then

final class ChartView: UIView {
    
    let collectionView: UICollectionView = {
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .vertical
            return UICollectionView(frame: .zero, collectionViewLayout: layout)
        }()
    
    // MARK: - Life Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setHierarchy()
        setLayout()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension ChartView {
    func setHierarchy() {
        addSubview(collectionView)
    }

    func setLayout() {
        collectionView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

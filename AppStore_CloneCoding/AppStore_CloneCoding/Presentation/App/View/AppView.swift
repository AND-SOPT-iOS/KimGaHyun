//
//  AppView.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 10/26/24.
//

import UIKit

import SnapKit
import Then

final class AppView: UIView {
    
    private let collectionViewLayout = CustomCompositionalLayout.create()
    private(set) lazy var collectionView = UICollectionView(frame: .zero,
                                                            collectionViewLayout: collectionViewLayout)
    
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

private extension AppView {
    func setHierarchy() {
        addSubview(collectionView)
    }

    func setLayout() {
        collectionView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

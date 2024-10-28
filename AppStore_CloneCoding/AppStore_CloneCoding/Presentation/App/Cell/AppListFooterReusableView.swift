//
//  AppListFooterReusableView.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 10/28/24.
//

import UIKit

import SnapKit
import Then

final class AppListFooterReusableView: UICollectionReusableView {
    
    private let divideLineView: UIView = UIView()
    
    // MARK: - Life Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setView()
        setAddTarget()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setView() {
        setStyle()
        setHierarchy()
        setLayout()
    }
}

private extension AppListFooterReusableView {
    func setStyle() {
        divideLineView.do {
            $0.backgroundColor = .systemGray6
        }
    }
    
    func setHierarchy() {
        addSubview(divideLineView)
    }
    
    func setLayout() {
        divideLineView.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.centerX.equalToSuperview()
            $0.width.equalTo(370)
            $0.height.equalTo(1)
        }
    }
    
    func setAddTarget() {
        // allButton.addTarget(self, action:  #selector(allButtonDidTapped), for: .touchUpInside)
    }
    
    
}

//
//  AppListHeaderReusableView.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 10/28/24.
//

import UIKit

import SnapKit
import Then

final class AppListHeaderReusableView: UICollectionReusableView {
    
    private let titleLabel: UILabel = UILabel()
    let allButton: UIButton = UIButton()
    
    // MARK: - Life Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setView()
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
private extension AppListHeaderReusableView {
    func setStyle() {
        titleLabel.do {
            $0.textColor = .black
            $0.font = .boldSystemFont(ofSize: 20)
        }
        
        allButton.do {
            $0.setTitle("모두 보기", for: .normal)
            $0.setTitleColor(.systemBlue, for: .normal)
            $0.titleLabel?.font = .systemFont(ofSize: 15)
            $0.isUserInteractionEnabled = true
        }
    }
    
    func setHierarchy() {
       addSubviews(titleLabel, allButton)
   }
    
    func setLayout() {
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(20)
            $0.leading.equalToSuperview().inset(10)
        }
        
        allButton.snp.makeConstraints {
            $0.top.equalToSuperview().inset(15)
            $0.trailing.equalToSuperview().inset(10)
        }
    }
}


extension AppListHeaderReusableView {
    func configureHeader(forTitle: String) {
        titleLabel.text = forTitle
    }
}

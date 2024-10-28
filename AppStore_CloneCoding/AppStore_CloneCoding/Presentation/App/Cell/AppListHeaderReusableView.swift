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
    private let allButton: UIButton = UIButton()
    
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
    
    func setAddTarget() {
        allButton.addTarget(self, action:  #selector(allButtonDidTapped), for: .touchUpInside)
    }
    
    @objc
    func allButtonDidTapped() {
        // AppStore 차트 이동
        print("All Button Did Tapped")
    }
}


extension AppListHeaderReusableView {
    func configureHeader(forTitle: String) {
        titleLabel.text = forTitle
    }
}

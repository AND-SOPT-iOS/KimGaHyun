//
//  CustomAppTitleView.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 10/27/24.
//

import UIKit

/// 공통적으로 사용되는 AppTitleView 컴포넌트화함
final class CustomAppTitleView: UIView {

    let mainLabel = UILabel()
    let subLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLabels()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupLabels()
    }
    
    private func setupLabels() {
        mainLabel.do {
            $0.font = .systemFont(ofSize: 16)
            $0.textColor = .black
        }
        
        subLabel.do {
            $0.font = .systemFont(ofSize: 12)
            $0.textColor = .systemGray
        }
        
        addSubviews(mainLabel, subLabel)
        
        mainLabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(5)
            $0.leading.equalToSuperview().inset(5)
        }
        
        subLabel.snp.makeConstraints {
            $0.top.equalTo(mainLabel.snp.bottom).offset(2)
            $0.leading.equalTo(mainLabel)
        }
    }
    
    func appTitleLabel(main: String, sub: String) {
        mainLabel.text = main
        subLabel.text = sub
    }
}

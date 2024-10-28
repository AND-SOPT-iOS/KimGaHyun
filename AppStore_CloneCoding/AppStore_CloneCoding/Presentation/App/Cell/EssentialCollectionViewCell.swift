//
//  EssentialCollectionViewCell.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 10/26/24.
//


import UIKit

import SnapKit
import Then

final class EssentialCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    var isRank: Bool = false {
        didSet {
            rankLabel.isHidden = !isRank
            setLayout()
        }
    }
    
    // MARK: - UI Components

    private let logoImage: UIImageView = UIImageView()
    private let appTitleView: CustomAppTitleView = CustomAppTitleView()
    private let downloadButton: UIButton = UIButton()
    private let rankLabel: UILabel = UILabel()
    

    
    // MARK: - Life Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setStyle()
        setHierarchy()
        setLayout()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}

extension EssentialCollectionViewCell {
    func dataBind(model: AppList) {
        logoImage.image = model.appIcon
        appTitleView.appTitleLabel(main: model.title, sub: model.subTitle)
        downloadButton.setTitle(model.buttonState, for: .normal)
        rankLabel.text = model.isRank ? "\(model.rank ?? 0)" : ""
        isRank = model.isRank
    }
}

// MARK: - Private Extensions

private extension EssentialCollectionViewCell {
    
    func setStyle() {
        backgroundColor = .white
        self.layer.cornerRadius = 10
        
        logoImage.do {
            $0.layer.cornerRadius = 10
            $0.clipsToBounds = true
        }
        
        downloadButton.do {
            $0.setTitle("받기", for: .normal)
            $0.titleLabel?.font = .systemFont(ofSize: 14)
            $0.backgroundColor = .systemGray6
            $0.setTitleColor(.systemBlue, for: .normal)
            $0.layer.cornerRadius = 12
        }
        
        rankLabel.do {
            $0.font = .systemFont(ofSize: 15)
            $0.textColor = .black
        }
    }
    
    func setHierarchy() {
        addSubviews(logoImage, appTitleView, downloadButton)
        addSubview(rankLabel)
        rankLabel.isHidden = true
    }
    
    func setLayout() {
        logoImage.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalToSuperview().inset(6)
            $0.size.equalTo(60)
        }
        
        appTitleView.snp.makeConstraints {
            $0.top.equalToSuperview().inset(23)
            $0.leading.equalTo(logoImage.snp.trailing).offset(5)
        }
        
        
        if isRank {
            rankLabel.snp.remakeConstraints {
                $0.top.equalToSuperview().inset(28)
                $0.leading.equalTo(logoImage.snp.trailing).offset(7)
            }
            
            appTitleView.snp.remakeConstraints {
                $0.top.equalToSuperview().inset(23)
                $0.leading.equalTo(rankLabel.snp.trailing).offset(7)
            }
        }
        
        downloadButton.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.trailing.equalToSuperview().inset(10)
            $0.width.equalTo(55)
            $0.height.equalTo(25)
        }
    }
}

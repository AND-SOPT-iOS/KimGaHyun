//
//  AdvertisementCollectionViewCell.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 10/26/24.
//

import UIKit

import SnapKit
import Then

final class AdvertisementCollectionViewCell: UICollectionViewCell {
    
    private let textColors: [UIColor] = [.systemBlue, .black, .systemGray]
    private let fontSizes: [CGFloat] = [10, 18, 16]
    
    // MARK: - UI Components
    
    private let tagLabel: UILabel = UILabel()
    private let mainExplainLabel: UILabel = UILabel()
    private let subExplainLabel: UILabel = UILabel()
    private let explainStackView: UIStackView = UIStackView()
    
    private let thumbnailImageView: UIImageView = UIImageView()
    private let appIconView: UIImageView = UIImageView()
    private let mainTitleLabel: UILabel = UILabel()
    private let subTitleLabel: UILabel = UILabel()
    private let downloadButton: UIButton = UIButton()
    

    
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

extension AdvertisementCollectionViewCell {
    func dataBind(model: AdvertisementList) {
        tagLabel.text = model.tag
        mainExplainLabel.text = model.mainExplain
        subExplainLabel.text = model.subExplain
        thumbnailImageView.image = model.thumbnailImage
//        appIconView.image = model.appIcon
//        mainTitleLabel.text = model.title
//        subTitleLabel.text = model.subTitle
//        downloadButton.setTitle(model.buttonState, for: .normal)
    }
}

// MARK: - Private Extensions

private extension AdvertisementCollectionViewCell {
    
    func setStyle() {
        backgroundColor = .white
        self.layer.cornerRadius = 10
        
        var x = 0
        for i in [tagLabel, mainExplainLabel, subExplainLabel] {
            i.textColor = textColors[x]
            i.font = .systemFont(ofSize: fontSizes[x])
            x += 1
        }

        explainStackView.do {
            $0.axis = .vertical
            $0.spacing = 1.5
            $0.alignment = .leading
        }
        
        thumbnailImageView.do {
            $0.layer.cornerRadius = 10
            $0.clipsToBounds = true
        }
    
    }
    
    func setHierarchy() {
        addSubviews(explainStackView, thumbnailImageView)
        explainStackView.addArrangedSubviews(tagLabel, mainExplainLabel, subExplainLabel)
        thumbnailImageView.addSubviews(appIconView, mainTitleLabel, subTitleLabel, downloadButton)
    }
    
    func setLayout() {
        explainStackView.snp.makeConstraints {
            $0.top.equalToSuperview().inset(5)
            $0.leading.equalToSuperview()
        }
        
        thumbnailImageView.snp.makeConstraints {
            $0.top.equalTo(explainStackView.snp.bottom).offset(10)
            $0.centerX.equalToSuperview()
            $0.width.equalToSuperview()
            $0.height.equalTo(210)
        }
    }
}

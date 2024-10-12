//
//  NicknameViewController.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 10/12/24.
//

import UIKit

import SnapKit
import Then

final class NicknameViewController: UIViewController {
    
    // MARK: - UI Components

    private let titleLabel: UILabel = UILabel()
    private let nicknameTextField: UITextField = UITextField()
    private lazy var settingButton: UIButton = UIButton()
    
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setStyle()
        setHierarchy()
        setLayout()
    }
    
    @objc func settingButtonTapped() {
        self.navigationController?.popViewController(animated: true)
    }
}

private extension NicknameViewController {
    func setStyle() {
        self.view.backgroundColor = .white
        
        titleLabel.do {
            $0.text = "닉네임을 입력해주세요."
            $0.font = .systemFont(ofSize: 16)
            $0.textColor = .tintColor
            $0.textAlignment = .center
        }
        
        nicknameTextField.do {
            $0.placeholder = "닉네임을 입력해주세요"
            $0.clearButtonMode = .whileEditing
            $0.layer.borderColor = UIColor.gray.cgColor
            $0.layer.borderWidth = 1
        }
        
        settingButton.do {
            $0.setTitle("뒤로가기", for: .normal)
            $0.backgroundColor = .tintColor
            $0.setTitleColor(.white, for: .normal)
            $0.addTarget(self, action: #selector(settingButtonTapped), for: .touchUpInside)
        }
    }
    
    func setHierarchy() {
        [
            titleLabel,
            nicknameTextField,
            settingButton
        ].forEach {
            view.addSubview($0)
        }
    }
    
    func setLayout() {
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(300)
            $0.horizontalEdges.equalToSuperview().inset(30)
        }
        
        nicknameTextField.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(30)
            $0.horizontalEdges.equalToSuperview().inset(30)
            $0.height.equalTo(48)
        }
        
        settingButton.snp.makeConstraints {
            $0.top.equalTo(nicknameTextField.snp.bottom).offset(20)
            $0.horizontalEdges.equalToSuperview().inset(30)
            $0.height.equalTo(48)
        }
    }
}

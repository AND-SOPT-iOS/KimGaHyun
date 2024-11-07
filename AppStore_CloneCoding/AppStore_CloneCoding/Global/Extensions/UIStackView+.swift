//
//  UIStackView+.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 10/26/24.
//

import UIKit

extension UIStackView {
    
    /// 한 번에 여러 개의 UIView 또는 UIView의 하위 클래스 객체들을 상위 UIStackView에 추가
    func addArrangedSubviews(_ views: UIView...) {
        views.forEach {
            self.addArrangedSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
}

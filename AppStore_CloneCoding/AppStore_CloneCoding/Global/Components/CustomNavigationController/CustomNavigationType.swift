//
//  CustomNavigationType.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 10/26/24.
//

import UIKit

struct CustomNavigationType {
    var hasBackButton: Bool                 // backButton 존재 여부
    var hasRightButton: Bool                // rightButton 존재 여부

    var mainTitle: StringOrImageType        // title
    var mainTitlePosition: String = "center"                   // title의 위치 여부
    
    var rightButton: StringOrImageType      // rightButton
    var rightButtonAction: (() -> Void)?    // rightButton의 액션
    var backButtonAction: (() -> Void)?     // leftButton의 액션
    var titleButtonAction: (() -> Void)?    // 타이틀 버튼을 클릭했을 때 액션
    
    var backgroundColor: UIColor = .white
}

enum StringOrImageType {
    case string(String)
    case image(UIImage)
    case stringAndImage(String, UIImage)
}

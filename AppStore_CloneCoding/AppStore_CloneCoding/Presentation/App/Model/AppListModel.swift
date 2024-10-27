//
//  AppListModel.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 10/27/24.
//

import UIKit

struct AppListModel {
    let appList: [AppList]
}

struct AppList {
    let appIcon: UIImage
    let title: String
    let subTitle: String
    let buttonState: String
    let isRank: Bool
    let rank: Int?
}

extension AppList {
    static func essentialDummy() -> [AppList] {
        return [
            AppList(appIcon: UIImage(resource: .silson24), title: "실손24", subTitle: "간편한 실손보험 청구", buttonState: "받기", isRank: false, rank: nil),
            AppList(appIcon: UIImage(resource: .naverpay), title: "네이버페이", subTitle: "지갑 없이 매장에서 결제", buttonState: "받기", isRank: false, rank: nil),
            AppList(appIcon: UIImage(resource: .kakaopay), title: "카카오페이", subTitle: "마음 놓고 금융하다", buttonState: "받기", isRank: false, rank: nil),
            AppList(appIcon: UIImage(resource: .toss), title: "토스", subTitle: "금융이 쉬워진다", buttonState: "열기", isRank: false, rank: nil),
            AppList(appIcon: UIImage(resource: .kbpay), title: "KB Pay", subTitle: "모든 금융을 한번에, 한손에, 한눈에 담다", buttonState: "열기", isRank: false, rank: nil),
            AppList(appIcon: UIImage(resource: .kakaobank), title: "카카오뱅크", subTitle: "이미 모두의 은행", buttonState: "열기", isRank: false, rank: nil),
            AppList(appIcon: UIImage(resource: .monimo), title: "monimo(모니모)", subTitle: "모이는 금융, 커지는 혜택!", buttonState: "받기", isRank: false, rank: nil),
            AppList(appIcon: UIImage(resource: .hyundaidepartment), title: "현대백화점", subTitle: "금융", buttonState: "받기", isRank: false, rank: nil),
            AppList(appIcon: UIImage(resource: .mobileTmoney), title: "모바일티머니", subTitle: "금융", buttonState: "열기", isRank: false, rank: nil)
        ]
    }
    
    static func freeDummy() -> [AppList] {
        return [
            AppList(appIcon: UIImage(resource: .pass), title: "PASS by SKT", subTitle: "인증을 넘어 일상으로 PASS", buttonState: "받기", isRank: true, rank: 1),
            AppList(appIcon: UIImage(resource: .hyundaicard), title: "현대카드", subTitle: "금융", buttonState: "받기", isRank: true, rank: 2),
            AppList(appIcon: UIImage(resource: .kbank), title: "케이뱅크 (Kbank)", subTitle: "make money", buttonState: "열기", isRank: true, rank: 3),
            AppList(appIcon: UIImage(resource: .kakaobank), title: "카카오뱅크", subTitle: "이미 모두의 은행", buttonState: "열기", isRank: true, rank: 4),
            AppList(appIcon: UIImage(resource: .monimo), title: "monimo(모니모)", subTitle: "모이는 금융, 커지는 혜택!", buttonState: "받기", isRank: true, rank: 5),
            AppList(appIcon: UIImage(resource: .hyundaidepartment), title: "현대백화점", subTitle: "금융", buttonState: "받기", isRank: true, rank: 6),
            AppList(appIcon: UIImage(resource: .toss), title: "토스", subTitle: "금융이 쉬워진다", buttonState: "열기", isRank: true, rank: 7),
            AppList(appIcon: UIImage(resource: .kbpay), title: "KB Pay", subTitle: "모든 금융을 한번에, 한손에, 한눈에 담다", buttonState: "열기", isRank: true, rank: 8),
            AppList(appIcon: UIImage(resource: .mobileTmoney), title: "모바일티머니", subTitle: "금융", buttonState: "열기", isRank: true, rank: 9)
        ]
    }
    
}

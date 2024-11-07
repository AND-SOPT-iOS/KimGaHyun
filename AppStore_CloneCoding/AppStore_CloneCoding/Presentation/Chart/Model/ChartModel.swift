//
//  ChartModel.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 11/1/24.
//

import UIKit

extension AppList {
    static func chartDummy() -> [AppList] {
        return [
            AppList(appIcon: UIImage(resource: .pass), title: "PASS by SKT", subTitle: "인증을 넘어 일상으로 PASS", buttonState: "받기", isRank: true, rank: 1),
            AppList(appIcon: UIImage(resource: .hyundaicard), title: "현대카드", subTitle: "금융", buttonState: "받기", isRank: true, rank: 2),
            AppList(appIcon: UIImage(resource: .kbank), title: "케이뱅크 (Kbank)", subTitle: "make money", buttonState: "열기", isRank: true, rank: 3),
            AppList(appIcon: UIImage(resource: .kakaobank), title: "카카오뱅크", subTitle: "이미 모두의 은행", buttonState: "열기", isRank: true, rank: 4),
            AppList(appIcon: UIImage(resource: .monimo), title: "monimo(모니모)", subTitle: "모이는 금융, 커지는 혜택!", buttonState: "받기", isRank: true, rank: 5),
            AppList(appIcon: UIImage(resource: .hanamoney), title: "하나머니(트래블로그)", subTitle: "금융", buttonState: "받기", isRank: true, rank: 6),
            AppList(appIcon: UIImage(resource: .travelPay), title: "트래블월렛 - travel Pay", subTitle: "페이에 세계를 담다", buttonState: "받기", isRank: true, rank: 7),
            AppList(appIcon: UIImage(resource: .mobileTmoney), title: "모바일티머니", subTitle: "금융", buttonState: "열기", isRank: true, rank: 8),
            AppList(appIcon: UIImage(resource: .monimo), title: "monimo(모니모)", subTitle: "모이는 금융, 커지는 혜택!", buttonState: "2,900", isRank: true, rank: 9),
            AppList(appIcon: UIImage(resource: .hanamoney), title: "하나머니(트래블로그)", subTitle: "금융", buttonState: "열기", isRank: true, rank: 10)
        ]
    }
}

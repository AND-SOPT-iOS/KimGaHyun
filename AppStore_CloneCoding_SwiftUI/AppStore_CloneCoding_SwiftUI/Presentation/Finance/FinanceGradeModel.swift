//
//  FinanceGradeModel.swift
//  AppStore_CloneCoding_SwiftUI
//
//  Created by Gahyun Kim on 11/27/24.
//

import SwiftUI

struct FinanceGradeModel: Identifiable {
    let id: UUID
    let rank: Int
    let mainTitle: String
    let subTitle: String
    let iconImage: Image
    let downloadState: String
}

extension FinanceGradeModel {
    static func dummy() -> [Self] {
        return
        [FinanceGradeModel(id: .init(), rank: 1, mainTitle: "네이버페이", subTitle: "네이버페이", iconImage: Image(.naverpay), downloadState: "받기"),
         FinanceGradeModel(id: .init(), rank: 2, mainTitle: "하나머니", subTitle: "금융", iconImage: Image(.hanamoney), downloadState: "받기"),
         FinanceGradeModel(id: .init(), rank: 3, mainTitle: "KB Pay", subTitle: "모바일신분증, 결제, 통신", iconImage: Image(.kbpay), downloadState: "받기"),
         FinanceGradeModel(id: .init(), rank: 4, mainTitle: "케이뱅크 (Kbank)", subTitle: "기분 좋은 금융생활", iconImage: Image(.kbank), downloadState: "받기"),
         FinanceGradeModel(id: .init(), rank: 5, mainTitle: "실손24", subTitle: "간편한 실손보험 청구", iconImage: Image(.silson24), downloadState: "받기"),
         FinanceGradeModel(id: .init(), rank: 6, mainTitle: "현대카드", subTitle: "현대카드", iconImage: Image(.hyundaicard), downloadState: "받기"),
         FinanceGradeModel(id: .init(), rank: 7, mainTitle: "monimo (모니모)", subTitle: "모이는 금융, 커지는 혜택!", iconImage: Image(.monimo), downloadState: "받기"),
         FinanceGradeModel(id: .init(), rank: 8, mainTitle: "카카오뱅크", subTitle: "이미 모두의 은행", iconImage: Image(.kakaobank), downloadState: "받기"),
         FinanceGradeModel(id: .init(), rank: 9, mainTitle: "모바일티머니", subTitle: "금융", iconImage: Image(.mobileTmoney), downloadState: "받기")
         
        ]
    }
}

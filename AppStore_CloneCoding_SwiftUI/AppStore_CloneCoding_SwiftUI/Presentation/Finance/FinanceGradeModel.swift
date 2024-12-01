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
    // 필수 앱 섹션
    static func essentialDummy() -> [FinanceGradeModel] {
        return [
            FinanceGradeModel(id: .init(), rank: 1, mainTitle: "네이버페이", subTitle: "지갑 없이 매장에서 결제", iconImage: Image(.naverpay), downloadState: "받기"),
            FinanceGradeModel(id: .init(), rank: 2, mainTitle: "카카오페이", subTitle: "마음 놓고 금융하다", iconImage: Image(.kakaopay), downloadState: "받기"),
            FinanceGradeModel(id: .init(), rank: 3, mainTitle: "토스", subTitle: "금융이 쉬워진다", iconImage: Image(.toss), downloadState: "열기"),
            FinanceGradeModel(id: .init(), rank: 4, mainTitle: "KB Pay", subTitle: "모든 금융을 한 손에", iconImage: Image(.kbpay), downloadState: "열기"),
            FinanceGradeModel(id: .init(), rank: 5, mainTitle: "네이버페이", subTitle: "지갑 없이 매장에서 결제", iconImage: Image(.naverpay), downloadState: "받기"),
            FinanceGradeModel(id: .init(), rank: 6, mainTitle: "카카오페이", subTitle: "마음 놓고 금융하다", iconImage: Image(.kakaopay), downloadState: "받기"),
            FinanceGradeModel(id: .init(), rank: 7, mainTitle: "토스", subTitle: "금융이 쉬워진다", iconImage: Image(.toss), downloadState: "열기"),
            FinanceGradeModel(id: .init(), rank: 8, mainTitle: "KB Pay", subTitle: "모든 금융을 한 손에", iconImage: Image(.kbpay), downloadState: "열기"),
            FinanceGradeModel(id: .init(), rank: 9, mainTitle: "카카오페이", subTitle: "마음 놓고 금융하다", iconImage: Image(.kakaopay), downloadState: "받기")
        ]
    }
}

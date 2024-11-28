//
//  FinanceAdvertisementModel.swift
//  AppStore_CloneCoding_SwiftUI
//
//  Created by Gahyun Kim on 11/27/24.
//

import SwiftUI

struct FinanceAdvertisementModel: Identifiable {
    let id: UUID
    let tag: String
    let mainTitle: String
    let subTitle: String
    let thumbnailImage: Image
    let iconImage: Image
    let appMainTitle: String
    let appSubTitle: String
    let downloadState: String
}

extension FinanceAdvertisementModel {
    static func dummy() -> [Self] {
        return
        [FinanceAdvertisementModel(id: .init(), tag: "추천", mainTitle: "Taxnote 부기 및 회계 앱", subTitle: "간편한 장부 관리", thumbnailImage: Image(.taxnoteThumbnail), iconImage: Image(.taxnote), appMainTitle: "Taxnote 부기 및 회계 앱", appSubTitle: "자영업자용 세금 환급을 위한 부기 및 회계 앱", downloadState: "받기"),
            FinanceAdvertisementModel(id: .init(), tag: "새로운 경험", mainTitle: "Fortune City - A Finance App", subTitle: "게임을 하듯 관리하는 가계부", thumbnailImage: Image(.fortunecityThumbnail), iconImage: Image(.fortunecity), appMainTitle: "Fortune City - A Finance App", appSubTitle: "좋은 소비습관을 만들어 보세요!", downloadState: "받기"),
            FinanceAdvertisementModel(id: .init(), tag: "새로운 앱", mainTitle: "Elk - 여행 환율 변환기", subTitle: "언제 어디서나 간편한 환율 체크", thumbnailImage: Image(.currenzyThumbnail), iconImage: Image(.currenzy), appMainTitle: "Elk - 여행 환율 변환기", appSubTitle: "Winner of ADA 2017", downloadState: "받기"),
            FinanceAdvertisementModel(id: .init(), tag: "새로운 경험", mainTitle: "Fortune City - A Finance App", subTitle: "게임을 하듯 관리하는 가계부", thumbnailImage: Image(.fortunecityThumbnail), iconImage: Image(.fortunecity), appMainTitle: "Fortune City - A Finance App", appSubTitle: "좋은 소비습관을 만들어 보세요!", downloadState: "받기")
        ]
    }
}

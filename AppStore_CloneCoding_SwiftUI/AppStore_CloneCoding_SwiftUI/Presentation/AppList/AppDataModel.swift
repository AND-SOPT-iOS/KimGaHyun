//
//  AppDataModel.swift
//  AppStore_CloneCoding_SwiftUI
//
//  Created by Gahyun Kim on 11/23/24.
//

import SwiftUI

struct AppModel: Identifiable {
    let id: UUID
    let iconImage: Image
    let ranking: Int
    let title: String
    let subTitle: String
    let downloadState: String
    let category: String
}

extension AppModel {
    static func dummy() -> [Self] {
        return
        [AppModel(id: .init(), iconImage: Image(.photo), ranking: 1, title: "SOPT", subTitle: "IT벤처 창업 동아리", downloadState: "다운로드", category: "서비스"),
         AppModel(id: .init(), iconImage: Image(.photo2), ranking: 2, title: "당근", subTitle: "당근당근당근당근", downloadState: "다운로드", category: "중고마켓"),
         AppModel(id: .init(), iconImage: Image(.photo), ranking: 3, title: "instagram", subTitle: "릴스중독자나다", downloadState: "다운로드", category: "서비스"),
         AppModel(id: .init(), iconImage: Image(.photo2), ranking: 4, title: "빼빼로", subTitle: "조리가 준 빼빼로..", downloadState: "다운로드", category: "서비스"),
         AppModel(id: .init(), iconImage: Image(.photo), ranking: 5, title: "SOPT", subTitle: "IT벤처 창업 동아리", downloadState: "다운로드", category: "서비스"),
         AppModel(id: .init(), iconImage: Image(.photo2), ranking: 6, title: "instagram", subTitle: "릴스중독자나다", downloadState: "다운로드", category: "서비스"),
         AppModel(id: .init(), iconImage: Image(.photo), ranking: 7, title: "빼빼로", subTitle: "조리가 준 빼빼로..", downloadState: "다운로드", category: "서비스"),
         AppModel(id: .init(), iconImage: Image(.photo2), ranking: 8, title: "SOPT", subTitle: "IT벤처 창업 동아리", downloadState: "다운로드", category: "서비스")
         ]
        
    }
}

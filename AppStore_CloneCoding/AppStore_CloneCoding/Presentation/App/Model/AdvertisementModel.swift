//
//  AdvertisementModel.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 10/27/24.
//

import UIKit

struct AdvertisementModel {
    let advertisementList: [AdvertisementList]
}

struct AdvertisementList {
    let tag: String
    let mainExplain: String
    let subExplain: String
    let thumbnailImage: UIImage
    let appIcon: UIImage
    let title: String
    let subTitle: String
    let buttonState: String
}

extension AdvertisementList {
    static func dummy() -> [AdvertisementList] {
        return [
            AdvertisementList(tag: "추천", 
                              mainExplain: "Taxnote 부기 및 회계 앱",
                              subExplain: "간편한 장부 관리",
                              thumbnailImage: UIImage(resource: .taxnoteThumbnail),
                              appIcon: UIImage(resource: .taxnote), 
                              title: "Taxnote 부기 및 회계 앱",
                              subTitle: "자영업자용 세금 환급을 위한 부기 및 회계 앱", 
                              buttonState: "받기"),

            AdvertisementList(tag: "새로운 경험",
                              mainExplain: "Fortune City - A Finance App",
                              subExplain: "게임을 하듯 관리하는 가계부",
                              thumbnailImage: UIImage(resource: .fortunecityThumbnail),
                              appIcon: UIImage(resource: .fortunecity),
                              title: "Fortune City - A Finance App",
                              subTitle: "좋은 소비습관을 만들어 보세요!",
                              buttonState: "받기"),

            AdvertisementList(tag: "새로운 앱",
                              mainExplain: "Currenzy",
                              subExplain: "빠르고 쉬운 환율 계산",
                              thumbnailImage: UIImage(resource: .currenzyThumbnail),
                              appIcon: UIImage(resource: .currenzy),
                              title: "Currenzy",
                              subTitle: "금융",
                              buttonState: "6,600"),
            
            AdvertisementList(tag: "추천",
                              mainExplain: "Taxnote 부기 및 회계 앱",
                              subExplain: "간편한 장부 관리",
                              thumbnailImage: UIImage(resource: .taxnoteThumbnail),
                              appIcon: UIImage(resource: .taxnote),
                              title: "Taxnote 부기 및 회계 앱",
                              subTitle: "자영업자용 세금 환급을 위한 부기 및 회계 앱",
                              buttonState: "받기"),

            AdvertisementList(tag: "새로운 경험",
                              mainExplain: "Fortune City - A Finance App",
                              subExplain: "게임을 하듯 관리하는 가계부",
                              thumbnailImage: UIImage(resource: .fortunecityThumbnail),
                              appIcon: UIImage(resource: .fortunecity),
                              title: "Fortune City - A Finance App",
                              subTitle: "좋은 소비습관을 만들어 보세요!",
                              buttonState: "받기"),

            AdvertisementList(tag: "새로운 앱",
                              mainExplain: "Currenzy",
                              subExplain: "빠르고 쉬운 환율 계산",
                              thumbnailImage: UIImage(resource: .currenzyThumbnail),
                              appIcon: UIImage(resource: .currenzy),
                              title: "Currenzy",
                              subTitle: "금융",
                              buttonState: "6,600")
        ]
    }
}

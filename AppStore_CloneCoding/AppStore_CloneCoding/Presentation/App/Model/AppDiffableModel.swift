//
//  AppDiffableModel.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 10/31/24.
//

import Foundation

enum Section: Int, CaseIterable {
    case advertisement
    case essential
    case pay
    case free
}

struct AppItem: Hashable {
    let id = UUID()
    let title: String
}

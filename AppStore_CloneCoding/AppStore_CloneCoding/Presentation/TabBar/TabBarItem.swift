//
//  TabBarItem.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 10/26/24.
//


import UIKit

enum TabBarItem: CaseIterable {
    
    case today, game, app, arcade, search

    // 선택되지 않은 탭
    var normalItem: UIImage? {
        switch self {
        case .today:
            return UIImage(systemName: "doc.text.image")
        case .game:
            return UIImage(systemName: "gamecontroller")
        case .app:
            return UIImage(systemName: "square.stack.3d.up")
        case .arcade:
            return UIImage(systemName: "arcade.stick.console")
        case .search:
            return UIImage(systemName: "magnifyingglass")
        }
    }
    
    // 선택된 탭
    var selectedItem: UIImage? {
        switch self {
        case .today:
            return UIImage(systemName: "doc.text.image")?.withTintColor(.systemBlue)
        case .game:
            return UIImage(systemName: "gamecontroller")?.withTintColor(.systemBlue)
        case .app:
            return UIImage(systemName: "square.stack.3d.up")?.withTintColor(.systemBlue)
        case .arcade:
            return UIImage(systemName: "arcade.stick.console")?.withTintColor(.systemBlue)
        case .search:
            return UIImage(systemName: "magnifyingglass")?.withTintColor(.systemBlue)
        }
    }
    
    // 탭 별 제목
    var itemTitle: String? {
        switch self {
        case .today: return "투데이"
        case .game: return "게임"
        case .app: return "앱"
        case .arcade: return "Arcade"
        case .search: return "검색"
        }
    }
    
    // 탭 별 전환될 화면 -> 나중에 하나씩 추가
    var targetViewController: UIViewController {
        switch self {
        case .today: return ViewController()
        case .game: return ViewController()
        case .app: return ViewController()
        case .arcade: return ViewController()
        case .search: return ViewController()
        }
    }
}

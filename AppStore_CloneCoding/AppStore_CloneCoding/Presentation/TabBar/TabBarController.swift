//
//  TabBarController.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 10/26/24.
//

import UIKit

import SnapKit
import Then

// MARK: - Tab Bar

final class TabBarController: UITabBarController {
    
    var customTabBar = CustomTabBar()
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setValue(customTabBar, forKey: "tabBar")
        
        setupStyle()
        addTabBarController()
    }
}

// MARK: - Private Extensions

private extension TabBarController {
    func setupStyle() {
        view.backgroundColor = .white
        tabBar.backgroundColor = .white
        tabBar.unselectedItemTintColor = .systemGray
        tabBar.tintColor = .black
        
        tabBar.do {
            $0.layer.shadowColor = UIColor.black.cgColor
            $0.layer.shadowOpacity = 0.05
            $0.layer.shadowOffset = CGSize(width: 0, height: 1)
            $0.layer.shadowRadius = 24
            
            let customBorder = CALayer()
            customBorder.frame = CGRect(x: 0, y: 0, width: tabBar.frame.width, height: 1)
            customBorder.backgroundColor = UIColor.systemGray.cgColor
            
            $0.layer.addSublayer(customBorder)
        }
    }
    
    
    func addTabBarController() {
        let viewControllers = TabBarItem.allCases.map {
            let currentViewController = createViewController(
                title: $0.itemTitle ?? "",
                image: $0.normalItem ?? UIImage(),
                selectedImage: $0.selectedItem ?? UIImage(),
                viewController: $0.targetViewController
            )
            return currentViewController
        }
        setViewControllers(viewControllers, animated: false)
    }
    
    func createViewController(title: String,
                              image: UIImage,
                              selectedImage: UIImage,
                              viewController: UIViewController) -> UIViewController {
        let currentViewController = viewController
        let tabbarItem = UITabBarItem(
            title: title,
            image: image.withRenderingMode(.alwaysOriginal),
            selectedImage: selectedImage.withRenderingMode(.alwaysOriginal)
        )
        
        // title이 선택되지 않았을 때 폰트, 색상 설정
        let normalAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 12) as Any,
            .foregroundColor: UIColor.systemGray
        ]
        
        // title이 선택되었을 때 폰트, 색상 설정
        let selectedAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 12)as Any,
            .foregroundColor: UIColor.systemBlue
        ]
        
        tabbarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -10)
        tabbarItem.setTitleTextAttributes(normalAttributes, for: .normal)
        tabbarItem.setTitleTextAttributes(selectedAttributes, for: .selected)
        
        currentViewController.tabBarItem = tabbarItem
        
        return currentViewController
    }
}

// Custom Tab Bar
final class CustomTabBar: UITabBar {
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        var size = super.sizeThatFits(size)
        size.height += 14
        return size
    }
}

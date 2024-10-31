//
//  CustomCompositionalLayout.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 10/26/24.
//


import UIKit

// MARK: - Compositional Layout

enum CustomCompositionalLayout {
    static func create() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { (sectionNumber, _ environment) -> NSCollectionLayoutSection? in
            let section: NSCollectionLayoutSection
            switch sectionNumber {
            case 0:
                section = createAdvertisementSection()
            case 1:
                section = createEssentialSection()
            case 2:
                section = createEssentialSection()
            case 3:
                section = createEssentialSection()
            default:
                section = createTodaySection()
            }
            return section
        }
    }
    
    static func createAdvertisementSection() -> NSCollectionLayoutSection {
        let itemFractionalWidthFraction = 1.0 / 1.0
        let itemInset: CGFloat = 8
        
        // item
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(itemFractionalWidthFraction),
                                              heightDimension: .absolute(300))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                     leading: itemInset,
                                                     bottom: itemInset,
                                                     trailing: itemInset)
        
        // group
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.9),
                                               heightDimension: .absolute(300))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,
                                                       subitems: [item])
        
        // section
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        section.contentInsets = NSDirectionalEdgeInsets(top: itemInset,
                                                        leading: itemInset,
                                                        bottom: itemInset,
                                                        trailing: itemInset)
        section.boundarySupplementaryItems = [
            NSCollectionLayoutBoundarySupplementaryItem(layoutSize: .init(widthDimension: .fractionalWidth(1),
                                                                          heightDimension: .absolute(10)),
                                                        elementKind: UICollectionView.elementKindSectionFooter,
                                                        alignment: .bottom)
        ]
        return section
    }
    
    static func createEssentialSection() -> NSCollectionLayoutSection {
        let itemFractionalWidthFraction = 1.0
        let itemInset: CGFloat = 5
        
        // item
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(itemFractionalWidthFraction),
                                              heightDimension: .absolute(50))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: itemInset,
                                                     leading: itemInset,
                                                     bottom: itemInset,
                                                     trailing: itemInset)
              
           let verticalGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                          heightDimension: .estimated(270))
           let verticalGroup = NSCollectionLayoutGroup.vertical(layoutSize: verticalGroupSize,
                                                                subitem: item,
                                                                count: 3)

        let horizontalGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.92),
                                                            heightDimension: .estimated(270))
           let horizontalGroup = NSCollectionLayoutGroup.horizontal(layoutSize: horizontalGroupSize,
                                                                    subitems: [verticalGroup])
        
        // section
        let section = NSCollectionLayoutSection(group: horizontalGroup)
        section.orthogonalScrollingBehavior = .groupPaging
        section.contentInsets = NSDirectionalEdgeInsets(top: itemInset,
                                                        leading: itemInset,
                                                        bottom: itemInset,
                                                        trailing: itemInset)
        
        // Header, Footer
        section.boundarySupplementaryItems = [
            NSCollectionLayoutBoundarySupplementaryItem(layoutSize: .init(widthDimension: .fractionalWidth(1),
                                                                          heightDimension: .absolute(30)),
                                                        elementKind: UICollectionView.elementKindSectionHeader,
                                                        alignment: .top),
            NSCollectionLayoutBoundarySupplementaryItem(layoutSize: .init(widthDimension: .fractionalWidth(1),
                                                                          heightDimension: .absolute(5)),
                                                        elementKind: UICollectionView.elementKindSectionFooter,
                                                        alignment: .bottom)
        ]
        return section
    }
    
    
    static func createTodaySection() -> NSCollectionLayoutSection {
        let itemFractionalWidthFraction = 1.0 / 1.0
        let itemInset: CGFloat = 7
        
        // item
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(itemFractionalWidthFraction),
            heightDimension: .fractionalHeight(1)
        )
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: itemInset,
                                                     leading: itemInset,
                                                     bottom: itemInset,
                                                     trailing: itemInset)
        
        // group
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .estimated(190)
        )
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,
                                                       subitems: [item])
        
        // section
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = NSDirectionalEdgeInsets(top: itemInset,
                                                        leading: itemInset,
                                                        bottom: itemInset,
                                                        trailing: itemInset)
        
        // Header
        section.boundarySupplementaryItems = [
            NSCollectionLayoutBoundarySupplementaryItem(layoutSize: .init(widthDimension: .fractionalWidth(1),
                                                                          heightDimension: .absolute(40)),
                                                        elementKind: UICollectionView.elementKindSectionHeader,
                                                        alignment: .top)]
        return section
    }
}

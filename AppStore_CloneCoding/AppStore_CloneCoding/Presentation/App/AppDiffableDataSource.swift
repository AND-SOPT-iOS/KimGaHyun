//
//  AppDiffableDataSource.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 10/31/24.
//

import UIKit

extension AppViewController {
    func setDiffableDataSource() {
        // Cell
        self.dataSource = UICollectionViewDiffableDataSource<Section, AppItem>(collectionView: rootView.collectionView) { (collectionView, indexPath, item) -> UICollectionViewCell? in
            let idx = indexPath.item
            switch Section(rawValue: indexPath.section) {
            case .advertisement:
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AdvertisementCollectionViewCell.className,
                                                                    for: indexPath) as? AdvertisementCollectionViewCell else { return UICollectionViewCell() }
                cell.dataBind(model: self.advertisementListData[idx])
                return cell
                
            case .essential:
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EssentialCollectionViewCell.className,
                                                                    for: indexPath) as? EssentialCollectionViewCell else { return UICollectionViewCell() }
                cell.dataBind(model: self.essentialAppListData[idx])
                return cell
                
            case .pay:
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EssentialCollectionViewCell.className,
                                                                    for: indexPath) as? EssentialCollectionViewCell else { return UICollectionViewCell() }
                cell.dataBind(model: self.payAppListData[idx])
                return cell
                
            default:
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EssentialCollectionViewCell.className,
                                                                    for: indexPath) as? EssentialCollectionViewCell else { return UICollectionViewCell() }
                cell.dataBind(model: self.freeAppListData[idx])
                return cell
            }
        }
        
        
        // Header, Footer
        self.dataSource.supplementaryViewProvider = { (collectionView, kind, indexPath) -> UICollectionReusableView? in
            switch kind {
            case UICollectionView.elementKindSectionHeader:
                guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                                   withReuseIdentifier: AppListHeaderReusableView.className,
                                                                                   for: indexPath) as? AppListHeaderReusableView else { return UICollectionReusableView() }
                switch Section(rawValue: indexPath.section) {
                case .essential:
                    header.configureHeader(forTitle: "필수 금융 앱")
                    
                case .pay:
                    header.configureHeader(forTitle: "유료 순위")
                    
                case .free:
                    header.configureHeader(forTitle: "무료 순위")
                    header.allButton.addTarget(self, action:  #selector(self.allButtonDidTapped), for: .touchUpInside)
                    
                default: break
                }
                return header
                
            case UICollectionView.elementKindSectionFooter:
                return collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                       withReuseIdentifier: AppListFooterReusableView.className,
                                                                       for: indexPath)
            default:
                return nil
            }
        }
    }
    
    func applySnapshot() {
        var snapshot = NSDiffableDataSourceSnapshot<Section, AppItem>()
        
        snapshot.appendSections(Section.allCases)
        
        snapshot.appendItems(advertisementListData.map { AppItem(title: $0.title) }, toSection: .advertisement)
        snapshot.appendItems(essentialAppListData.map { AppItem(title: $0.title) }, toSection: .essential)
        snapshot.appendItems(payAppListData.map { AppItem(title: $0.title) }, toSection: .pay)
        snapshot.appendItems(freeAppListData.map { AppItem(title: $0.title) }, toSection: .free)
        
        dataSource.apply(snapshot, animatingDifferences: true)
    }
}

extension AppViewController {
    @objc
    func allButtonDidTapped() {
        let chartViewController = ChartViewController()
        navigationController?.pushViewController(chartViewController, animated: true)
    }
}

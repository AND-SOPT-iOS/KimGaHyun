//
//  AppViewController.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 10/26/24.
//

import UIKit

final class AppViewController: UIViewController {
    
    private let rootView = AppView()
    
    private var advertisementListData = AdvertisementList.dummy()
    private var essentialAppListData = AppList.essentialDummy()
    private var freeAppListData = AppList.freeDummy()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setStyle()
        setHierarchy()
        setLayout()
        
        createCollectionView()
        
        setDelegate()
    }
}


private extension AppViewController {
    func setStyle() {
        
    }
    
    func setHierarchy() {
        view.addSubview(rootView.collectionView)
    }
    
    func setLayout() {
        rootView.collectionView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    func createCollectionView() {
        let mainCollectionView = rootView.collectionView
        mainCollectionView.backgroundColor = .white
//        mainCollectionView.alwaysBounceVertical = true
        
        mainCollectionView.do {
            $0.register(AdvertisementCollectionViewCell.self, forCellWithReuseIdentifier: AdvertisementCollectionViewCell.className)
            $0.register(EssentialCollectionViewCell.self, forCellWithReuseIdentifier: EssentialCollectionViewCell.className)
        }
    }
    
    func setDelegate() {
        rootView.collectionView.delegate = self
        rootView.collectionView.dataSource = self
    }
    
    func setNavigationBar() {
        let type: CustomNavigationType = CustomNavigationType(hasBackButton: false,
                                                              hasRightButton: false,
                                                              mainTitle: StringOrImageType.string("앱"),
                                                              rightButton: StringOrImageType.string(""),
                                                              rightButtonAction: nil)
        
        if let navigationController = navigationController as? CustomNavigationController {
            navigationController.setupNavigationBar(forType: type)
        }
    }
    
}


// MARK: - Essential methods

extension AppViewController: UICollectionViewDelegate {
    
}

extension AppViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 3
        }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return advertisementListData.count
        case 1:
            return essentialAppListData.count
        default:
            return freeAppListData.count
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AdvertisementCollectionViewCell.className, for: indexPath) as? AdvertisementCollectionViewCell else { return UICollectionViewCell() }
            cell.dataBind(model: advertisementListData[indexPath.item])
            return cell
        case 1:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EssentialCollectionViewCell.className, for: indexPath) as? EssentialCollectionViewCell else { return UICollectionViewCell() }
            cell.dataBind(model: essentialAppListData[indexPath.item])
            return cell
        default:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EssentialCollectionViewCell.className, for: indexPath) as? EssentialCollectionViewCell else { return UICollectionViewCell() }
            cell.dataBind(model: freeAppListData[indexPath.item])
            return cell
        }
    }
    
    
}

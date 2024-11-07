//
//  AppViewController.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 10/26/24.
//

import UIKit

final class AppViewController: UIViewController {
    
    let rootView = AppView()
    
    var advertisementListData = AdvertisementList.dummy()
    var essentialAppListData = AppList.essentialDummy()
    var payAppListData = AppList.payDummy()
    var freeAppListData = AppList.freeDummy()
    
    var dataSource: UICollectionViewDiffableDataSource<Section, AppItem>!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setView()
        createCollectionView()
        
        setDelegate()
        setDiffableDataSource()
        applySnapshot()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setNavigationBar()
        navigationController?.navigationBar.prefersLargeTitles = false
    }
    
    func setView() {
        setHierarchy()
        setLayout()
    }
}

private extension AppViewController {
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
        
        mainCollectionView.do {
            $0.register(AdvertisementCollectionViewCell.self, forCellWithReuseIdentifier: AdvertisementCollectionViewCell.className)
            $0.register(EssentialCollectionViewCell.self, forCellWithReuseIdentifier: EssentialCollectionViewCell.className)
            
            $0.register(AppListHeaderReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: AppListHeaderReusableView.className)
            $0.register(AppListFooterReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: AppListFooterReusableView.className)
        }
    }
    
    func setDelegate() {
        rootView.collectionView.delegate = self
    }
    
    func setNavigationBar() {
        title = "금융"
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
}

extension AppViewController: UICollectionViewDelegate { }

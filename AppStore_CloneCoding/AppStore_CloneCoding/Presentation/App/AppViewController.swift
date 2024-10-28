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
        
        
        setView()
        createCollectionView()
        setDelegate()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setNavigationBar()
    }
    
    func setView() {
        setStyle()
        setHierarchy()
        setLayout()
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
        
        mainCollectionView.do {
            $0.register(AdvertisementCollectionViewCell.self, forCellWithReuseIdentifier: AdvertisementCollectionViewCell.className)
            $0.register(EssentialCollectionViewCell.self, forCellWithReuseIdentifier: EssentialCollectionViewCell.className)
            
            $0.register(AppListHeaderReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: AppListHeaderReusableView.className)
            $0.register(AppListFooterReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: AppListFooterReusableView.className)
        }
    }
    
    func setDelegate() {
        rootView.collectionView.delegate = self
        rootView.collectionView.dataSource = self
    }
    
    func setNavigationBar() {
        title = "금융"
//        navigationController?.navigationBar.prefersLargeTitles = true
//        navigationItem.largeTitleDisplayMode = .automatic
        
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        
        // 타이틀 색상 검정으로 설정
//        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        appearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
}


// MARK: - Essential methods

extension AppViewController: UICollectionViewDelegate { }

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
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: AppListHeaderReusableView.className, for: indexPath) as? AppListHeaderReusableView else { return UICollectionReusableView() }
            switch indexPath.section {
            case 1:
                header.configureHeader(forTitle: "필수 금융 앱")
            case 2:
                header.configureHeader(forTitle: "무료 순위")
            default: break
            }
            return header
            
        case UICollectionView.elementKindSectionFooter:
            guard let footer = collectionView.dequeueReusableSupplementaryView( ofKind: kind, withReuseIdentifier: AppListFooterReusableView.className, for: indexPath) as? AppListFooterReusableView else { return UICollectionReusableView() }
            return footer
            
        default: return UICollectionReusableView()
        }
    }
}

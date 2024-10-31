//
//  ChartViewController.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 11/1/24.
//

import UIKit

import SnapKit
import Then

final class ChartViewController: UIViewController {
    
    private let rootView = ChartView()
    private var chartListData = AppList.chartDummy()
    
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
        setHierarchy()
        setLayout()
    }
}

private extension ChartViewController {
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
            $0.register(EssentialCollectionViewCell.self, forCellWithReuseIdentifier: EssentialCollectionViewCell.className)
        }
    }
    
    func setDelegate() {
        rootView.collectionView.delegate = self
        rootView.collectionView.dataSource = self
    }
    
    func setNavigationBar() {
        title = "인기차트"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .automatic
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        appearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
}

extension ChartViewController: UICollectionViewDelegate { }

extension ChartViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return chartListData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EssentialCollectionViewCell.className, for: indexPath) as? EssentialCollectionViewCell else { return UICollectionViewCell() }
        cell.dataBind(model: chartListData[indexPath.item])
        return cell
    }
}

extension ChartViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width - 20, height: 80)
    }
}

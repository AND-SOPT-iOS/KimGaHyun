//
//  UICollectionView+.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 10/29/24.
//

import UIKit

extension UICollectionView {
    func register<T: UICollectionViewCell>(cell name: T.Type) {
        register(T.self, forCellWithReuseIdentifier: String(describing: name))
    }
    
    func register<T: UICollectionReusableView>(supplementaryViewOfKind kind: String, withClass name: T.Type) {
        register(T.self, forSupplementaryViewOfKind: kind, withReuseIdentifier: String(describing: name))
    }
}

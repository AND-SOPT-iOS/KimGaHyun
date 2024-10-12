//
//  NSObject+.swift
//  AppStore_CloneCoding
//
//  Created by Gahyun Kim on 10/12/24.
//

import Foundation

extension NSObject {
    static var className: String {
        return String(describing: self)
    }
}

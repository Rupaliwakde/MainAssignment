//
//  Masonry.swift
//  SwiftyMasonry
//
//  Created by Pircate on 2018/8/29.
//  Copyright © 2018年 Pircate. All rights reserved.
//

public struct Masonry<Base> {
    
    let base: Base
    
    init(_ base: Base) {
        self.base = base
    }
}

public protocol MasonryCompatible: class {
    
    associatedtype CompatibleType
    
    var mas: CompatibleType { get }
}

public extension MasonryCompatible {
    
    var mas: Masonry<Self> {
        return Masonry(self)
    }
}

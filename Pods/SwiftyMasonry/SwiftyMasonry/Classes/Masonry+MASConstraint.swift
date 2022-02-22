//
//  Masonry+MASConstraint.swift
//  SwiftyMasonry
//
//  Created by Pircate on 2018/8/29.
//  Copyright © 2018年 Pircate. All rights reserved.
//

import Masonry

extension MASConstraint: MasonryCompatible {
}

public protocol MASValue {
}

extension CGFloat: MASValue {
}

extension Int: MASValue {
}

extension Double: MASValue {
}

extension Float: MASValue {
}

extension CGSize: MASValue {
}

extension CGPoint: MASValue {
}

public extension Masonry where Base: MASConstraint {
    
    @discardableResult
    func equalTo<Value: MASValue>(_ value: Value) -> MASConstraint {
        base.mas_equalTo()(value)
        return base
    }
}

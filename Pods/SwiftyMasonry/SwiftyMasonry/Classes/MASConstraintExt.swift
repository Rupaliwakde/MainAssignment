//
//  MASConstraintExt.swift
//  SwiftyMasonry
//
//  Created by Pircate on 2018/8/29.
//  Copyright © 2018年 Pircate. All rights reserved.
//

import Masonry

public protocol MASConstraintRelatableTarget: class {
}

extension MASViewAttribute: MASConstraintRelatableTarget {
}

extension UIView: MASConstraintRelatableTarget {
}

public extension MASConstraint {
    
    var left: MASConstraint {
        return left()
    }
    
    var top: MASConstraint {
        return top()
    }
    
    var right: MASConstraint {
        return right()
    }
    
    var bottom: MASConstraint {
        return bottom()
    }
    
    var leading: MASConstraint {
        return leading()
    }
    
    var trailing: MASConstraint {
        return trailing()
    }
    
    var width: MASConstraint {
        return width()
    }
    
    var height: MASConstraint {
        return height()
    }
    
    var centerX: MASConstraint {
        return centerX()
    }
    
    var centerY: MASConstraint {
        return centerY()
    }
    
    var baseline: MASConstraint {
        return baseline()
    }
    
    var firstBaseline: MASConstraint {
        return firstBaseline()
    }
    
    var lastBaseline: MASConstraint {
        return lastBaseline()
    }
    
    var leftMargin: MASConstraint {
        return leftMargin()
    }
    
    var rightMargin: MASConstraint {
        return rightMargin()
    }
    
    var topMargin: MASConstraint {
        return topMargin()
    }
    
    var bottomMargin: MASConstraint {
        return bottomMargin()
    }
    
    var leadingMargin: MASConstraint {
        return leadingMargin()
    }
    
    var trailingMargin: MASConstraint {
        return trailingMargin()
    }
    
    var centerXWithinMargins: MASConstraint {
        return centerXWithinMargins()
    }
    
    var centerYWithinMargins: MASConstraint {
        return centerYWithinMargins()
    }
    
    @discardableResult
    func key(_ velue: String) -> MASConstraint {
        key()(velue)
        return self
    }
    
    @discardableResult
    func insets(_ value: UIEdgeInsets) -> MASConstraint {
        insets()(value)
        return self
    }
    
    @discardableResult
    func inset(_ value: CGFloat) -> MASConstraint {
        inset()(value)
        return self
    }
    
    @discardableResult
    func offset(_ value: CGFloat) -> MASConstraint {
        offset()(value)
        return self
    }
    
    @discardableResult
    func sizeOffset(_ value: CGSize) -> MASConstraint {
        sizeOffset()(value)
        return self
    }
    
    @discardableResult
    func centerOffset(_ value: CGPoint) -> MASConstraint {
        centerOffset()(value)
        return self
    }
    
    @discardableResult
    func multipliedBy(_ value: CGFloat) -> MASConstraint {
        multipliedBy()(value)
        return self
    }
    
    @discardableResult
    func priority(_ value: MASLayoutPriority) -> MASConstraint {
        priority()(value)
        return self
    }
    
    @discardableResult
    func priorityLow() -> MASConstraint {
        priorityLow()()
        return self
    }
    
    @discardableResult
    func priorityMedium() -> MASConstraint {
        priorityMedium()()
        return self
    }
    
    @discardableResult
    func priorityHigh() -> MASConstraint {
        priorityHigh()()
        return self
    }
    
    @discardableResult
    func equalTo(_ target: MASConstraintRelatableTarget) -> MASConstraint {
        equalTo()(target)
        return self
    }
    
    @discardableResult
    func greaterThanOrEqualTo(_ target: MASConstraintRelatableTarget) -> MASConstraint {
        greaterThanOrEqualTo()(target)
        return self
    }
    
    @discardableResult
    func lessThanOrEqualTo(_ target: MASConstraintRelatableTarget) -> MASConstraint {
        lessThanOrEqualTo()(target)
        return self
    }
}

//
//  Masonry+UIView.swift
//  SwiftyMasonry
//
//  Created by Pircate on 2018/8/29.
//  Copyright © 2018年 Pircate. All rights reserved.
//

import Masonry

extension UIView: MasonryCompatible {
}

public extension Masonry where Base: UIView {
    
    var left: MASViewAttribute {
        return base.mas_left
    }
    
    var top: MASViewAttribute {
        return base.mas_top
    }
    
    var right: MASViewAttribute {
        return base.mas_right
    }
    
    var bottom: MASViewAttribute {
        return base.mas_bottom
    }
    
    var leading: MASViewAttribute {
        return base.mas_leading
    }
    
    var trailing: MASViewAttribute {
        return base.mas_trailing
    }
    
    var width: MASViewAttribute {
        return base.mas_width
    }
    
    var height: MASViewAttribute {
        return base.mas_height
    }
    
    var centerX: MASViewAttribute {
        return base.mas_centerX
    }
    
    var centerY: MASViewAttribute {
        return base.mas_centerY
    }
    
    var baseline: MASViewAttribute {
        return base.mas_baseline
    }
    
    func makeConstraints(closure: (MASConstraintMaker) -> Void) {
        base.mas_makeConstraints { maker in
            guard let maker = maker else { return }
            closure(maker)
        }
    }
    
    func updateConstraints(closure: (MASConstraintMaker) -> Void) {
        base.mas_updateConstraints { maker in
            guard let maker = maker else { return }
            closure(maker)
        }
    }
    
    func remakeConstraints(closure: (MASConstraintMaker) -> Void) {
        base.mas_remakeConstraints { maker in
            guard let maker = maker else { return }
            closure(maker)
        }
    }
}

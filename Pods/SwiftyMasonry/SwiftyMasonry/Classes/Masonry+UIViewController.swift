//
//  Masonry+UIViewController.swift
//  SwiftyMasonry
//
//  Created by Pircate on 2018/8/29.
//  Copyright © 2018年 Pircate. All rights reserved.
//

import Masonry

extension UIViewController: MasonryCompatible {
}

public extension Masonry where Base: UIViewController {
    
    var topLayoutGuide: MASViewAttribute {
        if #available(iOS 11.0, *) {
            return base.view.mas_safeAreaLayoutGuideTop
        } else {
            return base.mas_topLayoutGuide
        }
    }
    
    var bottomLayoutGuide: MASViewAttribute {
        if #available(iOS 11.0, *) {
            return base.view.mas_safeAreaLayoutGuideBottom
        } else {
            return base.mas_bottomLayoutGuide
        }
    }
}

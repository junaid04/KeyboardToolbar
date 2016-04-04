//
//  ExtensionClasses.swift
//  KeyboardToolbar
//
//  Created by Higher Visibility on 4/4/16.
//  Copyright © 2016 Junaid. All rights reserved.
//

import UIKit

extension UIViewController {
    
    
    func portraitToolbar() -> UIView {
        
        let portraitNib = UIViewController(nibName: "ToolbarViewPortrait", bundle: nil)
        let portraitView = portraitNib.view
        
        return portraitView
        
    }
    
    func landscapeToolbar() -> UIView {
        
        let landscapeNib = UIViewController(nibName: "ToolbarViewLandscape", bundle: nil)
        let landscapeView = landscapeNib.view
        return landscapeView
        
        
    }

}

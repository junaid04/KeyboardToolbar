//
//  CustomButton.swift
//  KeyboardToolbar
//
//  Created by Junaid on 4/3/16.
//  Copyright © 2016 Junaid. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    
    let buttonView = UIView()
    
    required init(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)!
        self.layer.cornerRadius = 5.0;
        self.layer.borderWidth = 1.5
        
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.backgroundColor = UIColor.blackColor()
        self.alpha = 0.75
        self.setTitleColor(UIColor.whiteColor(), forState: .Normal)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.backgroundColor = UIColor.whiteColor()
        self.setTitleColor(UIColor.blackColor(), forState: .Normal)
    }

    
}
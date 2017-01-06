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
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.backgroundColor = UIColor.black
        self.alpha = 0.75
        self.setTitleColor(UIColor.white, for: UIControlState())
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.backgroundColor = UIColor.white
        self.setTitleColor(UIColor.black, for: UIControlState())
    }

    
}

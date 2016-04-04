//
//  ViewController.swift
//  KeyboardToolbar
//
//  Created by Junaid on 4/2/16.
//  Copyright © 2016 Junaid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //ToobarViewLandscape
    @IBOutlet weak var txtFld: UITextField!
    
    var portView: UIView!
    var landView: UIView!
    var interfaceRotation: Bool?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        portView = self.portraitToolbar()
        landView = self.landscapeToolbar()
        
        let notificationCenter = NSNotificationCenter.defaultCenter()
        notificationCenter.addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        txtFld.keyboardAppearance = .Dark
        
        portView.backgroundColor = UIColor.grayColor()
        landView.backgroundColor = UIColor.grayColor()
        
        //portView.alpha = 0.9
        //landView.alpha = 0.9
        
        
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
        self.interfaceRotation = false
    }
    
    
    override func didRotateFromInterfaceOrientation(fromInterfaceOrientation: UIInterfaceOrientation) {
        
        if self.interfaceRotation == true {
            
            
            txtFld.becomeFirstResponder()
            
        }
    }
    
    
    func keyboardWillHide(notification: NSNotification) {
        
        txtFld.resignFirstResponder()
        self.interfaceRotation = true
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
        if UIDevice.currentDevice().orientation.isLandscape {
            print("landscape")
            
            txtFld.inputAccessoryView = landView
          
            
        } else {
            print("portrait")
            
            txtFld.inputAccessoryView = portView
            
            
            
        }
    }

    
}


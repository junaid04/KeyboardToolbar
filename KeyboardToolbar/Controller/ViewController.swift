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
        
        let notificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector: #selector(ViewController.keyboardWillHide(_:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        
        txtFld.keyboardAppearance = .dark
        
        portView.backgroundColor = UIColor.gray
        landView.backgroundColor = UIColor.gray
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        self.interfaceRotation = false
    }
    
    
    override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation) {
        
        if self.interfaceRotation == true {
            
            txtFld.becomeFirstResponder()
        }
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        if UIDevice.current.orientation.isLandscape {
            print("landscape")
            txtFld.inputAccessoryView = landView
        }
        else {
            print("portrait")
            txtFld.inputAccessoryView = portView
        }
    }
    
    //MARK: - Notification Selector
    func keyboardWillHide(_ notification: Notification) {
        
        txtFld.resignFirstResponder()
        self.interfaceRotation = true
    }
}

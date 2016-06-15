//
//  ViewController.swift
//  WordPlay
//
//  Created by Kristin Kamenar on 6/15/16.
//  Copyright © 2016 Kristin Kamenar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nounTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // link to VerbViewController
        let vVC = segue.destinationViewController as! VerbViewController
        
        vVC.nounFromScreen1 = nounTextField.text
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


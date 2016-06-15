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
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
            
        // link to VerbViewController
        let vVC = segue.destinationViewController as! VerbViewController
            
        vVC.nounFromScreen1 = nounTextField.text
        
        let screenNoun = nounTextField.text
        
        let title1 = screenNoun
        
        vVC.title = title1
        
        
    }
 
    
    override func shouldPerformSegueWithIdentifier(noun: String, sender: AnyObject?) -> Bool {
        
        var truth = true
        
        let noun = nounTextField.text
        
        if noun == ""
        {
            truth = false
        }
        
        return truth
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


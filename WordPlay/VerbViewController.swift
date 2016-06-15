//
//  VerbViewController.swift
//  WordPlay
//
//  Created by Kristin Kamenar on 6/15/16.
//  Copyright © 2016 Kristin Kamenar. All rights reserved.
//

import UIKit

class VerbViewController: UIViewController {
    
    @IBOutlet weak var verbTextField: UITextField!
    
    var nounFromScreen1 : String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //link to AdjectiveViewController
        let aVC = segue.destinationViewController as! AdjectiveViewController
        
        aVC.nounFromScreen2 = nounFromScreen1
        aVC.verbFromScreen2 = verbTextField.text
        
        let screenVerb = verbTextField.text
        
        
        let title2 = nounFromScreen1! + " | " +  screenVerb!
        
        aVC.title = title2
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegueWithIdentifier(noun: String, sender: AnyObject?) -> Bool {
        
        var truth = true
        
        let verb = verbTextField.text
        
        if verb == ""
        {
            truth = false
        }
        
        return truth
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

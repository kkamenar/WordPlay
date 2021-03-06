//
//  AdjectiveViewController.swift
//  WordPlay
//
//  Created by Kristin Kamenar on 6/15/16.
//  Copyright © 2016 Kristin Kamenar. All rights reserved.
//

import UIKit

class AdjectiveViewController: UIViewController {
    
    @IBOutlet weak var adjectiveTextField: UITextField!
    
    var nounFromScreen2 : String?
    var verbFromScreen2 : String?
    var adjectiveFromScreen2 : String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //link to StoryViewController
        let sVC = segue.destinationViewController as! StoryViewController
        
        sVC.noun = nounFromScreen2
        sVC.verb = verbFromScreen2
        sVC.adjective = adjectiveTextField.text
        
        let screenAdjective = adjectiveTextField.text
        
        let title3 = nounFromScreen2! + " | " +  verbFromScreen2! + " | " + screenAdjective!
        
        sVC.title = title3
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegueWithIdentifier(noun: String, sender: AnyObject?) -> Bool {
        
        var truth = true
        
        let adjective = adjectiveTextField.text
        
        if adjective == ""
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

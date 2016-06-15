//
//  StoryViewController.swift
//  WordPlay
//
//  Created by Kristin Kamenar on 6/15/16.
//  Copyright © 2016 Kristin Kamenar. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {


    @IBOutlet weak var nounLabel: UILabel!
    @IBOutlet weak var verbLabel: UILabel!
    @IBOutlet weak var adjectiveLabel: UILabel!
    
    var noun : String?
    var verb : String?
    var adjective : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nounLabel.text = noun
        verbLabel.text = verb
        adjectiveLabel.text = adjective

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

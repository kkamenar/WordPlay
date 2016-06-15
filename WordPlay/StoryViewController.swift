//
//  StoryViewController.swift
//  WordPlay
//
//  Created by Kristin Kamenar on 6/15/16.
//  Copyright © 2016 Kristin Kamenar. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {



    @IBOutlet weak var storyLabel: UILabel!
    
    var noun : String?
    var verb : String?
    var adjective : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let story1 = "While walking down the street, " + noun!
        let story2 = " "  + verb! + " into a "
        let story3 = adjective! + " friend"
        
        let story = story1 + story2 + story3
        
        storyLabel.text = story


        // Do any additional setup after loading the view.
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

//
//  SettingsViewController.swift
//  Dropbox
//
//  Created by Manpreet Singh on 9/21/15.
//  Copyright © 2015 The Climate Corporation. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var settingsScrollView: UIScrollView!
    
    
    @IBOutlet weak var settingsInage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
         settingsScrollView.contentSize = CGSize(width: 320, height: settingsInage.image!.size.height)

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

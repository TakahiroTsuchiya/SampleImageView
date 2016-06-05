//
//  MainViewController.swift
//  SampleImageView
//
//  Created by Takahiro Tsuchiya on 6/3/16.
//  Copyright © 2016 Takahiro Tsuchiya. All rights reserved.
//

import SCLAlertView
import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tapImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

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

    @IBAction func tapByWrapImageViewAction(sender: AnyObject) {

        let appearance = SCLAlertView.SCLAppearance(
            showCloseButton: false
        )
        let alertView = SCLAlertView(appearance: appearance)
        alertView.addButton("Add Image", target: self, selector: #selector(MainViewController.firstButtonAction))
        alertView.addButton("Cancel", action: {
        })
        alertView.showSuccess("TITLE", subTitle: "SUBTITLE")
    }

    func firstButtonAction() {
        self.tapImageView.image = UIImage(named: "expired.png")
    }
}


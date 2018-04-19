//
//  MemeTableVC.swift
//  MemeMe-1
//
//  Created by Raghav Sai Cheedalla on 4/15/18.
//  Copyright © 2018 SwiftEnthusiast. All rights reserved.
//

import UIKit

class MemeTableVC: UITableViewController {

    var memes: [Meme]! {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.memes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    //MARK: Action methds
    
    @IBAction func showMemeEditView(_ sender: Any) {
        
    }
    

}

//
//  MemeDetailVC.swift
//  MemeMe-1
//
//  Created by Raghav Sai Cheedalla on 4/18/18.
//  Copyright © 2018 SwiftEnthusiast. All rights reserved.
//

import UIKit

class MemeDetailVC: UIViewController {
    
    
    @IBOutlet weak var memeImage: UIImageView!
    
    var meme: Meme!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        memeImage.image = meme.memedImage
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

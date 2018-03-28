//
//  Meme.swift
//  MemeMe-1
//
//  Created by Raghav Sai Cheedalla on 3/27/18.
//  Copyright © 2018 SwiftEnthusiast. All rights reserved.
//

import Foundation
import UIKit

struct Meme {
    let topText         : String
    let bottomText      : String
    let originalImage   : UIImage
    let memedImage      : UIImage
    
    init(topText: String, bottomText: String, originalImage: UIImage, memedImage: UIImage) {
        self.topText = topText
        self.bottomText = bottomText
        self.originalImage = originalImage
        self.memedImage = memedImage
    }
    
}

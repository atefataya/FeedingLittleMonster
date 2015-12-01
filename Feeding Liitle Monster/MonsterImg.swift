//
//  MonsterImg.swift
//  Feeding Liitle Monster
//
//  Created by Atef H Ataya on 12/1/15.
//  Copyright © 2015 Atef H Ataya. All rights reserved.
//

import Foundation
import UIKit

class MonsterImg: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func playIdleAnimation() {
        var imgArray = [UIImage]() //empty array
        for var x = 1; x <= 4; x++ {
            let img = UIImage(named: "idle\(x).png")
            imgArray.append(img!) // force unwrap; means it will definitly have a value.
        }
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 0 //repeat
        self.startAnimating()
    }
    
    func playDeathAnimation() {
        
        self.image = UIImage (name: "dead5.png") // this will be the default image, so that after he die stay the same
        
        var imgArray = [UIImage]()
        for var x = 1; x<=5; x++ {
            let img = UIImage(named: "dead\(x).png")
            imgArray.append(img!)
        }
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 0
        self.startAnimating()
    }
}
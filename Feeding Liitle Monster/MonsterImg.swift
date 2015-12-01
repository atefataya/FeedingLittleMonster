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
        playIdleAnimation()
    }
    
    func playIdleAnimation() {
        
        self.image = UIImage (named: "idle1.png")
        
        self.animationImages = nil
        
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
        
        self.image = UIImage (named: "dead5.png") // this will be the default image after he die, so that after he die stay the same
        
        self.animationImages = nil //Remove the first animation
        
        var imgArray = [UIImage]()
        for var x = 1; x<=5; x++ {
            let img = UIImage(named: "dead\(x).png")
            imgArray.append(img!)
        }
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
    }
}
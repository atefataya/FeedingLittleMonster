//
//  DragImg.swift
//  Feeding Liitle Monster
//
//  Created by Atef H Ataya on 12/1/15.
//  Copyright © 2015 Atef H Ataya. All rights reserved.
//

import Foundation
import UIKit // it contains information about the UIImageView and all the iOS Controller

class DragImg: UIImageView {
    // it will inherit from UIImage View to use them
    //UIImage has its own initializer which we have to override but also we have 
    //to call the parent initializers
    
    var originalPosition: CGPoint! // to save the first position
    
    override init(frame: CGRect) {
       super.init(frame: frame)
    }
    
    required init? (coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        originalPosition = self.center // self of the imageView
        
    }
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first{
            let position = touch.locationInView(self.superview) // get the position in the super view
            self.center = CGPointMake(position.x, position.y) //center of the image view, move it to the poistion of the mouse
        }
    }
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.center = originalPosition
    }
}

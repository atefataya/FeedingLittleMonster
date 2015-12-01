//
//  ViewController.swift
//  Feeding Liitle Monster
//
//  Created by Atef H Ataya on 12/1/15.
//  Copyright © 2015 Atef H Ataya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var monsterImage: UIImageView!
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var heartImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var imgArray = [UIImage]() //empty array
        for var x = 1; x <= 4; x++ {
            let img = UIImage(named: "idle\(x).png")
            imgArray.append(img!) // force unwrap; means it will definitly have a value.
        }
        monsterImage.animationImages = imgArray
        monsterImage.animationDuration = 0.8
        monsterImage.animationRepeatCount = 0 //repeat 
        monsterImage.startAnimating()
    }

//    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
//        print("I just touched the screen")
//    }

    
}


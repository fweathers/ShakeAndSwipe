//
//  ViewController.swift
//  ShakeAndSwipe
//
//  Created by Felicia Weathers on 10/8/16.
//  Copyright © 2016 Felicia Weathers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight) // what is being affected by the swipe right
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
    }

    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        if event?.subtype == UIEventSubtype.motionShake {
            
            print("Device was shaken")
            
        }
    }
    
    func swiped(gesture: UIGestureRecognizer) {
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
                
            case UISwipeGestureRecognizerDirection.right:
                view.backgroundColor = UIColor.blue
                print("User swiped right")
            case UISwipeGestureRecognizerDirection.left:
                view.backgroundColor = UIColor.yellow
                print("User swiped left")
            default:
                break
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


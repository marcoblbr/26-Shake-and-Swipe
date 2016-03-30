//
//  ViewController.swift
//  26 - Shake and Swipe
//
//  Created by Marco on 7/31/15.
//  Copyright (c) 2015 Marco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // swipe right
        var swipeRight = UISwipeGestureRecognizer (target: self, action: "swiped:")

        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        
        self.view.addGestureRecognizer(swipeRight)
        
        // swipe up
        var swipeUp = UISwipeGestureRecognizer (target: self, action: "swiped:")
        
        swipeUp.direction = UISwipeGestureRecognizerDirection.Up
        
        self.view.addGestureRecognizer(swipeUp)

        // swipe down
        var swipeDown = UISwipeGestureRecognizer (target: self, action: "swiped:")
        
        swipeDown.direction = UISwipeGestureRecognizerDirection.Down
        
        self.view.addGestureRecognizer(swipeDown)

        // swipe left
        var swipeLeft = UISwipeGestureRecognizer (target: self, action: "swiped:")
        
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        
        self.view.addGestureRecognizer(swipeLeft)
    }
    
    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent) {
        if event.subtype == UIEventSubtype.MotionShake {
            println ("User started shaking")
        }
    }
    
    override func motionCancelled(motion: UIEventSubtype, withEvent event: UIEvent) {
        if event.subtype == UIEventSubtype.MotionShake {
            println ("User canceled shaking")
        }
    }

    // função é chamada quando ele termina de movimentar o celular
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        if event.subtype == UIEventSubtype.MotionShake {
            println ("User finished shaking their device")
        }
    }
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    func swiped (gesture: UIGestureRecognizer) {
        
        // let é preenchido caso seja do tipo uiswipegesturerecognizer
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
                
                case UISwipeGestureRecognizerDirection.Right:
                    println ("User swiped right")

                case UISwipeGestureRecognizerDirection.Up:
                    println ("User swiped up")

                case UISwipeGestureRecognizerDirection.Down:
                    println ("User swiped down")
                
                case UISwipeGestureRecognizerDirection.Left:
                    println ("User swiped left")
                
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


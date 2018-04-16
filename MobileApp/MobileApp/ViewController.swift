//
//  ViewController.swift
//  MobileApp
//
//  Created by eh15aaa on 10/04/2018.
//  Copyright © 2018 eh15aaa. All rights reserved.
//

import UIKit

protocol subviewDelegate {
    func changeSomething()
}


//////////////////////////////////////////
class ViewController: UIViewController, subviewDelegate {
    func changeSomething() {
        collisionBehavior.addBoundary(withIdentifier: "barrier" as
            NSCopying, for: UIBezierPath(rect: carView0.frame))
    }

    
  
    
    var dynamicAnimator: UIDynamicAnimator!
    var dynamicItemBehavior: UIDynamicItemBehavior!
    var collisionBehavior: UICollisionBehavior!
    var collisionBehavior1: UICollisionBehavior!
    var gravityBehavior: UIGravityBehavior!

    
    // ROAD image view
    @IBOutlet var roadImage: UIImageView!
    // WALKING image view
    @IBOutlet var walkingImage: UIImageView!
    @IBOutlet weak var walkingImage2: UIImageView!
    
    
    
    // CAR0 image view
    @IBOutlet weak var carView0: DraggedCarView!
    
    // BLUE CAR1-CAR3 image view
    @IBOutlet weak var carView1: UIImageView!
    @IBOutlet weak var carView2: UIImageView!
    @IBOutlet weak var carView3: UIImageView!
    
    // RED CAR4-CAR5 image view
    @IBOutlet weak var carView4: UIImageView!
    @IBOutlet weak var carView5: UIImageView!
    
    // CYAN CAR6-CAR8 image view
    @IBOutlet weak var carView6: UIImageView!
    @IBOutlet weak var carView7: UIImageView!
    @IBOutlet weak var carView8: UIImageView!
    
    // YELLOW CAR9-CAR11 image view
    @IBOutlet weak var carView9: UIImageView!
    @IBOutlet weak var carView10: UIImageView!
    @IBOutlet weak var carView11: UIImageView!
    
    // ORANGE CAR12-CAR14 image view
    @IBOutlet weak var carView12: UIImageView!
    @IBOutlet weak var carView13: UIImageView!
    @IBOutlet weak var carView14: UIImageView!
    
    // GREEN CAR15-CAR20 image view
    @IBOutlet weak var carView15: UIImageView!
    @IBOutlet weak var carView16: UIImageView!
    @IBOutlet weak var carView17: UIImageView!
    @IBOutlet weak var carView18: UIImageView!
    @IBOutlet weak var carView19: UIImageView!
    @IBOutlet weak var carView20: UIImageView!
    
    
    
   
    
 
    
    
    
    
    
    
    
    
    
//////////////////////////////////////////
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        carView0.myDelegate = self
    
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //PROGRAMMATICALLY created UIViews
        
        let randomNumber1 = arc4random_uniform(75) + 200
        let randomNumber2 = arc4random_uniform(75) + 200
        let randomNumber3 = arc4random_uniform(75) + 200
        let randomNumber4 = arc4random_uniform(75) + 200
        let randomNumber5 = arc4random_uniform(75) + 200
        let randomNumber6 = arc4random_uniform(75) + 200
        let randomNumber7 = arc4random_uniform(75) + 200
        let randomNumber8 = arc4random_uniform(75) + 200
        let randomNumber9 = arc4random_uniform(75) + 200
        let randomNumber10 = arc4random_uniform(75) + 200
        let randomNumber11 = arc4random_uniform(75) + 200
        let randomNumber12 = arc4random_uniform(75) + 200
        let randomNumber13 = arc4random_uniform(75) + 200
        let randomNumber14 = arc4random_uniform(75) + 200
        let randomNumber15 = arc4random_uniform(75) + 200
        let randomNumber16 = arc4random_uniform(75) + 200
        let randomNumber17 = arc4random_uniform(75) + 200
        let randomNumber18 = arc4random_uniform(75) + 200
        let randomNumber19 = arc4random_uniform(75) + 200
        let randomNumber20 = arc4random_uniform(75) + 200
        

        // Animation for cars
        
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
    
        
    
        
        collisionBehavior = UICollisionBehavior(items: [carView1, carView2, carView3, carView4, carView5, carView6, carView7, carView8, carView9, carView10, carView11, carView12, carView13, carView14, carView15, carView16, carView17, carView18, carView19, carView20])
        collisionBehavior.translatesReferenceBoundsIntoBoundary = false
        dynamicAnimator.addBehavior(collisionBehavior)
       
        
        dynamicItemBehavior = UIDynamicItemBehavior(items: [carView1, carView2, carView3, carView4, carView5, carView6, carView7, carView8, carView9, carView10, carView11, carView12, carView13, carView14, carView15, carView16, carView17, carView18, carView19, carView20])
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomNumber1)), for: carView1)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomNumber2)), for: carView2)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomNumber3)), for: carView3)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomNumber4)), for: carView4)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomNumber5)), for: carView5)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomNumber6)), for: carView6)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomNumber7)), for: carView7)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomNumber8)), for: carView8)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomNumber9)), for: carView9)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomNumber10)), for: carView10)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomNumber11)), for: carView11)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomNumber12)), for: carView12)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomNumber13)), for: carView13)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomNumber14)), for: carView14)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomNumber15)), for: carView15)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomNumber16)), for: carView16)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomNumber17)), for: carView17)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomNumber18)), for: carView18)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomNumber19)), for: carView19)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomNumber20)), for: carView20)
        dynamicAnimator.addBehavior(dynamicItemBehavior)
        

        
       
       
        
        // Animation for road
    var imagesNames = ["road1", "road2",
                       "road3", "road4",
                       "road5", "road6",
                       "road7", "road8",
                       "road9", "road10",
                       "road11", "road12",
                       "road13", "road14",
                       "road15", "road16",
                       "road17", "road18",
                       "road19", "road20"]
    var images = [UIImage]()
        
        for i in 0..<imagesNames.count{
            images.append(UIImage(named: imagesNames[i])!)
        }
        roadImage.animationImages = images
        roadImage.startAnimating()
        
        
        // Animation of walking
        var walkingArray: [UIImage]!
        
        walkingArray = [UIImage(named: "walking1")!,
                      UIImage(named: "walking2")!,
                      UIImage(named: "walking3")!,
                      UIImage(named: "walking4")!,
                      UIImage(named: "walking5")!,
                      UIImage(named: "walking6")!,
                      UIImage(named: "walking7")!,
                      UIImage(named: "walking8")!,
                      UIImage(named: "walking9")!,
                      UIImage(named: "walking10")!,
                      UIImage(named: "walking11")!,
                      UIImage(named: "walking12")!,
                      UIImage(named: "walking13")!]
        
        walkingImage.image = UIImage.animatedImage(with: walkingArray, duration: 1)
        
        
        //Animation of walking across street
        UIView.animate(withDuration: 8, delay: 4, options: [UIViewAnimationOptions.repeat, .curveLinear], animations:
            {
                
                self.walkingImage.center.x += self.view.bounds.width
                self.walkingImage.frame = CGRect (x:-250, y:200, width: 240, height: 128)
                
        }, completion: nil
        )
        
        // Animation of walking
        var walkingArrayy: [UIImage]!
        
        walkingArrayy = [UIImage(named: "walking1")!,
                        UIImage(named: "walking2")!,
                        UIImage(named: "walking3")!,
                        UIImage(named: "walking4")!,
                        UIImage(named: "walking5")!,
                        UIImage(named: "walking6")!,
                        UIImage(named: "walking7")!,
                        UIImage(named: "walking8")!,
                        UIImage(named: "walking9")!,
                        UIImage(named: "walking10")!,
                        UIImage(named: "walking11")!,
                        UIImage(named: "walking12")!,
                        UIImage(named: "walking13")!]
        
        walkingImage2.image = UIImage.animatedImage(with: walkingArrayy, duration: 1)
        
        
        //Animation of walking across street
        UIView.animate(withDuration: 10, delay: 4, options: [UIViewAnimationOptions.repeat, .curveLinear], animations:
            {
                
                self.walkingImage2.center.x += self.view.bounds.width
                self.walkingImage2.frame = CGRect (x:-400, y:400, width: 240, height: 128)
                
        }, completion: nil
        )

        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


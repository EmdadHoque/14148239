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

    let gameover = UIImageView(image: nil)
    
    
  
    
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
    
    
  
    
    // RED CAR4-CAR5 image view
    @IBOutlet weak var carView2: UIImageView!

    
    // CYAN CAR6-CAR8 image view
  
    
    // YELLOW CAR9-CAR11 image view
  
    
    // ORANGE CAR12-CAR14 image view
    
    
    // GREEN CAR15-CAR20 image view
  
    
    
    
   
    
 
    
    
    
    
    
    
    
    
    
//////////////////////////////////////////
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        carView0.myDelegate = self
    
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //PROGRAMMATICALLY created UIViews
        
    
        
        
        let randomNumber1 = arc4random_uniform(0) + 200 // speed y
        let randomNumberx1 = arc4random_uniform(198) + 40  // location x
        self.carView1.frame = CGRect (x: Int(randomNumberx1), y: -200, width: 25, height: 50)
        
        
        let randomNumberx2 = arc4random_uniform(198) + 40  // location x
        self.carView2.frame = CGRect (x: Int(randomNumberx2), y: -200, width: 25, height: 50)
        
        

        // Animation for cars
        
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        collisionBehavior = UICollisionBehavior(items: [carView1, carView2])
        collisionBehavior.translatesReferenceBoundsIntoBoundary = false
        dynamicAnimator.addBehavior(collisionBehavior)
        dynamicItemBehavior = UIDynamicItemBehavior(items: [carView1, carView2])
        
        
        
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomNumber1)), for: carView1)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomNumber1)), for: carView2)
        
      
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

        let when = DispatchTime.now()+10
        
        DispatchQueue.main.asyncAfter(deadline: when)
        {
            
            
            self.gameover.image = UIImage(named:"game_over.png")
            self.gameover.frame = UIScreen.main.bounds
            self.view.addSubview(self.gameover)
            self.view.bringSubview(toFront: self.gameover)
            
            
            
           
           
            
        }
        }
        
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}




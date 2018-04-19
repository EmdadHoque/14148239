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

  
    
    
  
    
    var fallcars = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    var dynamicAnimator: UIDynamicAnimator!
    var dynamicItemBehavior: UIDynamicItemBehavior!
    var collisionBehavior: UICollisionBehavior!
    var gravityBehavior: UIGravityBehavior!

    
    
    // ROAD image view
    @IBOutlet var roadImage: UIImageView!
    // WALKING image view
    @IBOutlet var walkingImage: UIImageView!
    @IBOutlet weak var walkingImage2: UIImageView!
    
    
    
    // CAR0 image view
    @IBOutlet weak var carView0: DraggedCarView!
    
    
   
    
    
//////////////////////////////////////////
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        carView0.myDelegate = self
    
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //PROGRAMMATICALLY created UIViews
        
    
        
        
        

        // Animation for cars
    
        
        
       
        
      
        

        
       
       
        
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
            
          
            
            
           
           
            
        }
        
        
        self.dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        
        self.dynamicItemBehavior = UIDynamicItemBehavior(items: [])
        
        
        // Car Generator
        
        for obstacle in 0...19{
            
            let wait1 = Double(self.fallcars[obstacle])
            let wait = DispatchTime.now() + wait1
            
            DispatchQueue.main.asyncAfter(deadline: wait) {
                
                let carColour = arc4random_uniform(6)
                let RandomCar = UIImageView(image: nil)
                
                switch carColour
                {
                    
                    case 1 : RandomCar.image = UIImage(named: "car1.png")
                    case 2:  RandomCar.image = UIImage(named: "car2.png")
                    case 3 : RandomCar.image = UIImage(named: "car3.png")
                    case 4 : RandomCar.image = UIImage(named: "car4.png")
                    case 5 : RandomCar.image = UIImage(named: "car5.png")
                    case 6 : RandomCar.image = UIImage(named: "car6.png")
                    default: RandomCar.image = UIImage(named: "car1.png")
                }
                
                
                
                let randomNx2 = arc4random_uniform(201) + 40
                RandomCar.frame = CGRect(x: Int(randomNx2), y: 0, width: 30, height: 50)
                self.view.addSubview(RandomCar)
                self.view.bringSubview(toFront: RandomCar)
                
                
                
                // Falling Cars
                
                let randomN2 = arc4random_uniform(75) + 200
                let randomN3 = arc4random_uniform(100) + 500
                
                
                self.dynamicItemBehavior.addItem(RandomCar)
                self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: Int(randomN3)), for: RandomCar)
                
                // Collision of Cars
                
                self.dynamicAnimator.addBehavior(self.dynamicItemBehavior)
                self.collisionBehavior = UICollisionBehavior(items: [RandomCar])
                self.collisionBehavior.translatesReferenceBoundsIntoBoundary = false
                self.dynamicAnimator.addBehavior(self.collisionBehavior)
                self.dynamicItemBehavior.elasticity = 0-1
            }
            
            let when = DispatchTime.now() + 5
            
            DispatchQueue.main.asyncAfter(deadline: when) {
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "gameOverScreen") as! GameOverPage
                self.present(vc, animated: false, completion: nil)
            }
            
        }
    }

    
        
        
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}




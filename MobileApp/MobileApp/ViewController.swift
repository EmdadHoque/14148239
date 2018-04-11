//
//  ViewController.swift
//  MobileApp
//
//  Created by eh15aaa on 10/04/2018.
//  Copyright © 2018 eh15aaa. All rights reserved.
//

import UIKit

//////////////////////////////////////////
class ViewController: UIViewController {
    
    
    // ROAD image view
    @IBOutlet var roadImage: UIImageView!
    // WALKING image view
    @IBOutlet var walkingImage: UIImageView!
    
    
    
    
    
    
    
    
    
    
    
    
    
//////////////////////////////////////////
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //PROGRAMMATICALLY created UIViews
        
        // creates a new image view holder & assigns image
        let carView2 = UIImageView(image: UIImage(named: "car1"))
        
        //assigns size and position to the image
        carView2.frame = CGRect (x:50, y:100, width: 20, height: 40)
        
        carView2.alpha = 1
        
        //adds the image view to main view
        self.view.addSubview(carView2)
        
        
        
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
        
        
        //Animation of sun and balloon
        UIView.animate(withDuration: 5, delay: 0.0, options: [UIViewAnimationOptions.repeat, .curveLinear], animations:
            {
                
                self.walkingImage.center.x += self.view.bounds.width
                self.walkingImage.frame = CGRect (x:-250, y:200, width: 240, height: 128)
                
        }, completion: nil
        )
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


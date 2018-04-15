//
//  WalkingGirl.swift
//  MobileApp
//
//  Created by eh15aaa on 12/04/2018.
//  Copyright © 2018 eh15aaa. All rights reserved.
//

import UIKit

class WalkingGirl: UIImageView {

    // Animation of walking
    var walkingArray: [UIImage]!
    
    WalkingGirl = [UIImage(named: "walking1")!,
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
    
    
    //Animation of walking across road
    UIView.animate(withDuration: 5, delay: 0.0, options: [UIViewAnimationOptions.repeat, .curveLinear], animations:
    {
    
    self.walkingImage.center.x += self.view.bounds.width
    self.walkingImage.frame = CGRect (x:-250, y:200, width: 240, height: 128)
    
    }, completion: nil
    )

}

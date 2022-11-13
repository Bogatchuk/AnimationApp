//
//  ViewController.swift
//  AnimationApp
//
//  Created by Roma Bogatchuk on 13.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var coreAnimationView : UIView!
    private var originCoordinate: CGFloat?

    override func viewDidLoad() {
        super.viewDidLoad()
        originCoordinate = coreAnimationView.frame.origin.x
    }

    @IBAction func startCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        // маятник
        UIView.animate(withDuration: 0.5, delay: 0, options: [.autoreverse, .repeat]) {
            if self.coreAnimationView.frame.origin.x == self.originCoordinate {
                self.coreAnimationView.frame.origin.x -= 40
            }else {
                self.coreAnimationView.frame.origin.x + = 40
            }
            
        }
    }
    
}


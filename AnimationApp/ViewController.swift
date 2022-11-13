//
//  ViewController.swift
//  AnimationApp
//
//  Created by Roma Bogatchuk on 13.11.2022.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var coreAnimationView : UIView!
    @IBOutlet weak var springAnimattionView: SpringView!
    private var originCoordinate: CGFloat?

    override func viewDidLoad() {
        super.viewDidLoad()
        originCoordinate = coreAnimationView.frame.origin.x
        //springAnimattionView.animate()
    }

    @IBAction func startCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        // маятник
        UIView.animate(withDuration: 0.5, delay: 0, options: [.autoreverse, .repeat]) {
            if self.coreAnimationView.frame.origin.x == self.originCoordinate {
                self.coreAnimationView.frame.origin.x -= 40
            }else {
                self.coreAnimationView.frame.origin.x += 40
            }
            
        }
    }
    
    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        springAnimattionView.animation = "wobble"
        springAnimattionView.duration = 0.5
        springAnimattionView.curve = "easeIn"
        springAnimattionView.force = 2
        springAnimattionView.delay = 0.3
        springAnimattionView.animate()
    }
}


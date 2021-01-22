//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Igor Parnadziev on 11/24/17.
//  Copyright © 2017 Igor Parnadziev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }

    
    func newBallImage () {
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage (named: ballArray[randomBallNumber])
        }
    
}



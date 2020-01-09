//
//  ViewController.swift
//  Metro-Wallet
//
//  Created by Matthew Ramos on 11/28/19.
//  Copyright © 2019 Matthew Ramos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var metroCardImage: UIImageView!
    @IBOutlet var cardSwipeRecognizer: UISwipeGestureRecognizer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardSwipeRecognizer?.direction = .down
        //find out why optionial is neccessary
        
    }
    
    @IBAction func cardSwiped(_ sender: UISwipeGestureRecognizer) {
        if cardSwipeRecognizer.state == .ended {
            UIView.animate(withDuration: 0.1, animations: {
                self.metroCardImage.frame.origin.y += 420
            }, completion: nil)
            UIView.animate(withDuration: 0.5, animations: {
                self.metroCardImage.frame.origin.y -= 420
            }, completion: nil)
        }
    }
    
    @IBAction func testButtonPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 0.1, animations: {
            self.metroCardImage.frame.origin.y += 420
        }, completion: nil)
        UIView.animate(withDuration: 0.5, animations: {
            self.metroCardImage.frame.origin.y -= 420
        }, completion: nil)
    }
}

//
//  ViewController.swift
//  Navigation
//
//  Created by Sanjay Noronha on 2016/04/30.
//  Copyright © 2016 funza Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func showBoat(sender: AnyObject) {
        
        self.performSegueWithIdentifier(MyConstants.segueBoat, sender: self)
        
    }

    @IBAction func showPlane(sender: AnyObject) {
        
        let myResultVC = self.storyboard?.instantiateViewControllerWithIdentifier(MyConstants.resultVCID) as! ResultViewController
        
        myResultVC.setTransport(MyConstants.Transport.Plane)
        
        self.presentViewController(myResultVC, animated: true, completion: nil)
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let myResultVC = segue.destinationViewController as! ResultViewController
        
        if segue.identifier == MyConstants.segueBoat {
            
            myResultVC.setTransport(MyConstants.Transport.Boat)
            
        }
        if segue.identifier == MyConstants.segueRocket {
            
            myResultVC.setTransport(MyConstants.Transport.Rocket)
            
        }
    }

}


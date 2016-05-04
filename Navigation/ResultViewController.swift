//
//  ResultViewController.swift
//  Navigation
//
//  Created by Sanjay Noronha on 2016/04/30.
//  Copyright © 2016 funza Academy. All rights reserved.
//

import UIKit

class ResultViewController : UIViewController {

    private var transport:MyConstants.Transport?
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(animated)
        
        myLabel.text = transport?.rawValue
        myImage.image = UIImage(named: (transport?.rawValue)!)
    }
    
    @IBAction func goBack(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    
    func setTransport ( transport:MyConstants.Transport ) {
        
        self.transport = transport
    }



}

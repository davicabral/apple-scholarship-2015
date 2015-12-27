//
//  RootViewController.swift
//  WWDC
//
//  Created by Davi Cabral de Oliveira on 21/04/15.
//  Copyright (c) 2015 Davi Cabral de Oliveira. All rights reserved.
//

import UIKit

class RootViewController: RESideMenu {
    
    override func awakeFromNib() {
        self.contentViewStoryboardID = "contentViewController"
        self.leftMenuViewStoryboardID = "leftMenuViewController"
//        self.contentViewController = UIViewController()
        self.contentViewController = self.storyboard?.instantiateViewControllerWithIdentifier("contentViewController")
        self.leftMenuViewController = self.storyboard?.instantiateViewControllerWithIdentifier("leftMenuViewController")
        parallaxEnabled = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

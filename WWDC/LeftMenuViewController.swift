//
//  LeftMenuViewController.swift
//  WWDC
//
//  Created by Davi Cabral de Oliveira on 21/04/15.
//  Copyright (c) 2015 Davi Cabral de Oliveira. All rights reserved.
//

import UIKit

class LeftMenuViewController: ViewController {

    let profileID = "profileViewController"
    let academicalID = "academicalViewController"
    let professinalID = "professionalViewController"
    let skillsID = "skillsViewController"
    let interestsID = "interestViewController"
    
    func changeScreen(screenID:String)
    {
        let mViewController = self.storyboard?.instantiateViewControllerWithIdentifier(screenID)

        self.sideMenuViewController.setContentViewController(mViewController, animated: true)
        self.sideMenuViewController.hideMenuViewController()
    }
    
    @IBAction func tapProfile(sender: AnyObject) {
        changeScreen(profileID)
    }

    @IBAction func tapAcademical(sender: AnyObject) {
        changeScreen(academicalID)
    }
    
    @IBAction func tapProfessional(sender: AnyObject) {
        changeScreen(professinalID)
    }
        
    @IBAction func tapSkills(sender: AnyObject) {
        changeScreen(skillsID)
    }
    
    @IBAction func tapInterests(sender: AnyObject) {
        changeScreen(interestsID)
    }
    
    
}

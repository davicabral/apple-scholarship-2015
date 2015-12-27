//
//  SkillsViewController.swift
//  WWDC
//
//  Created by Davi Cabral de Oliveira on 23/04/15.
//  Copyright (c) 2015 Davi Cabral de Oliveira. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {

    @IBOutlet weak var tecBar: PNBarChart!
    @IBOutlet weak var projBar: PNBarChart!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tecBar.backgroundColor = UIColor.clearColor()
        tecBar.labelTextColor = UIColor.whiteColor()
        tecBar.barBackgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        tecBar.xLabels = ["SWIFT","OBJ C","JAVA","UNITY 3D"]
        tecBar.yLabels = [1,4,7,10]
        tecBar.yLabelFormatter = ({(yValue: CGFloat) -> String! in
            return String()
        })
        tecBar.yValues = [3,3.4,2.5,4]
        tecBar.strokeColor = UIColor.whiteColor()
        tecBar.barRadius = 10
        tecBar.barWidth = 30
        

        

        
        
        projBar.backgroundColor = UIColor.clearColor()
        projBar.labelTextColor = UIColor.whiteColor()
        projBar.barBackgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        projBar.xLabels = ["DESIGN THINKING","CBL","SCRUM"]
        projBar.yLabelFormatter = ({(yValue: CGFloat) -> String! in
            return ""
        })
        projBar.yValues = [3,3.4,3.6]
        projBar.strokeColor = UIColor.whiteColor()
        projBar.barRadius = 10
        projBar.barWidth = 30
        
        

        
        tecBar.strokeChart()
        

        projBar.strokeChart()

        
        
        let tecBars = tecBar.bars
        let projBars = projBar.bars
        for bar in tecBars
        {
            bar.layer.borderWidth = 2
            bar.layer.borderColor = UIColor.whiteColor().CGColor
        }
        for bar in projBars
        {
            bar.layer.borderWidth = 2
            bar.layer.borderColor = UIColor.whiteColor().CGColor
        }
        
        // Do view setup here.
    }
    
    @IBAction func tapMenu(sender: AnyObject) {
        self.sideMenuViewController.presentLeftMenuViewController()
    }
    
}

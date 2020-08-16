//
//  ViewController.swift
//  Helloworld1
//
//  Created by Bertus Jacobs on 2020/08/16.
//  Copyright © 2020 Bertus Jacobs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftcardview: UIImageView!;
    @IBOutlet weak var rightcardview: UIImageView!;
    @IBOutlet weak var leftscore: UILabel!;
    @IBOutlet weak var rightscore: UILabel!;
    var leftscorecount = 0;
    var rightscorecount = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func methodDealtapped(_ sender: Any) {
        let leftnumber = Int.random(in: 2...14)
        let rightnumber = Int.random(in: 2...14)
        
        leftcardview.image = UIImage(named: "card\(leftnumber)")
        rightcardview.image = UIImage(named: "card\(rightnumber)")
        
        if leftnumber > rightnumber {
            leftscorecount += 1
            leftscore.text = String(leftscorecount)
        }
        else if leftnumber < rightnumber
        {
            rightscorecount += 1
            rightscore.text = String(rightscorecount)
        }
        else{
            
        }

    }
}


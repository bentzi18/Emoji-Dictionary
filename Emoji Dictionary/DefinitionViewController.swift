//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Yossi's macbook air on 19/6/17.
//  Copyright © 2017 Yossi's macbook air. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        if emoji == "😎" {
            definitionLabel.text = "This guy is cool."
        }
        
        if emoji == "😕" {
            definitionLabel.text = "This is awkward."
        }
        if emoji == "😎" {
            definitionLabel.text = "This guy is cool."
        }
        if emoji == "😎" {
            definitionLabel.text = "This guy is cool."
        }
        if emoji == "😎" {
            definitionLabel.text = "This guy is cool."
        }
        if emoji == "😎" {
            definitionLabel.text = "This guy is cool."
        }

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

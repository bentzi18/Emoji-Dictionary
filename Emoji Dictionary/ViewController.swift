//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Yossi's macbook air on 19/6/17.
//  Copyright © 2017 Yossi's macbook air. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var emojis = ["😎","😕","😡","😱","👹","👽"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! String
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.icon = "😎"
        emoji1.birthyear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "This guy is cool."
        
        let emoji1 = Emoji()
        emoji1.icon = "😕"
        emoji1.birthyear = 2005
        emoji1.category = "Smiley"
        emoji1.definition = "This guy is awkward."
        
        let emoji1 = Emoji()
        emoji1.icon = "😡"
        emoji1.birthyear = 2002
        emoji1.category = "Smiley"
        emoji1.definition = "This guy is angry."
        
        let emoji1 = Emoji()
        emoji1.icon = "😱"
        emoji1.birthyear = 2017
        emoji1.category = "Smiley"
        emoji1.definition = "This guy is shocked."
        
        let emoji1 = Emoji()
        emoji1.icon = "👹"
        emoji1.birthyear = 2016
        emoji1.category = "Smiley"
        emoji1.definition = "This guy is the devil."
        
        let emoji1 = Emoji()
        emoji1.icon = "👽"
        emoji1.birthyear = 2014
        emoji1.category = "Smiley"
        emoji1.definition = "This guy is an alien."
    }


}


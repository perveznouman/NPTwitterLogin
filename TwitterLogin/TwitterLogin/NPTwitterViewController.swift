//
//  ViewController.swift
//  TwitterLogin
//
//  Created by Nouman Pervez on 08/01/18.
//  Copyright © 2018 Nouman Pervez. All rights reserved.
//

import UIKit

class NPTwitterViewController: UIViewController, NPTwitterParserDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Action_TwitterLogin(_ sender: Any) {
        
        let twitterParser = NPTwitterParser()
        twitterParser.delegate = self
    }
    
    // MARK: - Twitter Parser Delegate
    
    func twitterParsingCompleted(_ twitterParserObj: NPTwitterParser) {
        if (twitterParserObj.error == nil){
            print(twitterParserObj)
        }
    }
}


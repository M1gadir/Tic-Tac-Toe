//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by My Macbook on 20/10/18.
//  Copyright © 2018 TB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var activePlayer = 1 //cross
    var gamestate = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    let winningCombination = [[0, 1, 2],[3, 4, 5],[6,7,8], [0,3,6], [1,4,7],[2,5,8],[0,4,8],[2,4,6 ]]
    
    @IBAction func Action(_ sender: AnyObject)
    {
        if (gamestate[sender.tag-1] == 0)
        {
            gamestate[sender.tag-1] = activePlayer
            if (activePlayer == 1)
            {
            sender.setImage(UIImage(named: "cross.png"), for: UIControlState())
            activePlayer = 2
            }
            else
            {
         sender.setImage(UIImage(named: "nought.png"), for: UIControlState())
            activePlayer = 1
            }
        }
        for combination in winningCombination
        {
            if gamestate[combination[0]] != 0 && gamestate[combination[0]] == gamestate[combination[1]] && gamestate[combination[1]] == gamestate[combination[2]]
        }
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


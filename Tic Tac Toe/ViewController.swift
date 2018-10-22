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
    var gameIsActive = true

    @IBOutlet weak var label: UILabel!
    @IBAction func Action(_ sender: AnyObject)
    {
        if (gamestate[sender.tag-1] == 0 && gameIsActive == true)
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
            {
                gameIsActive = false
                
                if gamestate[combination[0]] == 1
                {
                    label.text = "CROSS HAS WON!!!"
                }
                else
                {
                    label.text = "NOUGHT HAS WON!!!"
                }
                PlayAgainbutton.isHidden = false
                label.isHidden = false
                Mulai.isHidden = true
                
            }
        }
        
        gameIsActive = false
        
        for i in gamestate
        {
            if i == 0
            {
            gameIsActive = true
                break
            }
        }
        
        if gameIsActive == false
        {
            label.text = "IT WAS A DRAW"
            label.isHidden = false
            PlayAgainbutton.isHidden = false
            Mulai.isHidden = true
        }
    }
    @IBOutlet weak var Mulai: UIButton!
    @IBAction func mulai1(_ sender: Any)
    {
        gamestate = [0,0,0,0,0,0,0,0,0]
        gameIsActive = true
        activePlayer = 1
        
        Mulai.isHidden = true
        label.isHidden = true
        Mulai.isHidden = false
        
        for i in 1...9
        {
            let button = view.viewWithTag(i) as! UIButton
            button.setImage(nil, for: UIControlState())
        }
    }
    @IBOutlet weak var PlayAgainbutton: UIButton!
    @IBAction func PlayAgain(_ sender: Any)
    {
        gamestate = [0,0,0,0,0,0,0,0,0]
        gameIsActive = true
        activePlayer = 1
        
        PlayAgainbutton.isHidden = true
        label.isHidden = true
        Mulai.isHidden = false
        
        for i in 1...9
        {
         let button = view.viewWithTag(i) as! UIButton
            button.setImage(nil, for: UIControlState())
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


//
//  ViewController.swift
//  tictactoe
//
//  Created by Owen Richards on 31/10/2018.
//  Copyright © 2018 Owen Garfield. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var turn = "nought"
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0] //0 is empty, 2 is noughts, 1 is crosses
    let winCombos = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    
    @IBAction func goPressed(_ sender: UIButton) {
        
        //Discover which square was tapped
        print(sender.tag)
        
        //Set the image constants
        
        let nought = UIImage(named: "nought")
        let cross = UIImage(named: "cross")
        
        
        if turn == "cross" && gameState[sender.tag - 1] == 0{
        
        turn = "nought"
        let newImage = cross
        gameState[sender.tag - 1] = 1
        sender.setImage(newImage, for: .normal)
            print(gameState)
            checkForGameOver()
            
        } else if turn == "nought" && gameState[sender.tag - 1] == 0 {
            
            turn = "cross"
            let newImage = nought
            gameState[sender.tag - 1] = 2
            sender.setImage(newImage, for: .normal)
            print(gameState)
            checkForGameOver()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func checkForGameOver(){
        
    
        
        //123
        
        //456
  
        
        //789
        
        //147
        
        //258
        
        //369
        
        //159
        
        //357
        
    }
    
}


//
//  ViewController.swift
//  TicTacToe
//
//  Created by Mohammad Al-haddad on 18/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    var playerColor = UIColor.red
    var player1 : [Int] = []
    var player2 : [Int] = []
    var buttons : [UIButton] = []
    var defaultColor : UIColor?
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet weak var button0 : UIButton!;
    @IBOutlet weak var button1 : UIButton!;
    @IBOutlet weak var button2 : UIButton!;
    @IBOutlet weak var button3 : UIButton!;
    @IBOutlet weak var button4 : UIButton!;
    @IBOutlet weak var button5 : UIButton!;
    @IBOutlet weak var button6 : UIButton!;
    @IBOutlet weak var button7 : UIButton!;
    @IBOutlet weak var button8 : UIButton!;
        
    override func viewDidLoad() {
        super.viewDidLoad()
        buttons.append(contentsOf: [button0,button1,button2,button3,button4,button5,button6,button7,button8])
        defaultColor = button1.backgroundColor
        winnerLabel.text = ""
    }
    
    @IBAction func colorChange(_ sender: UIButton) {
        
        if playerColor == UIColor.red{
            sender.backgroundColor = playerColor
            playerColor = UIColor.blue
            player1.append(sender.tag)
            
        }else{
            sender.backgroundColor = playerColor
            playerColor = UIColor.red
            player2.append(sender.tag)
        }
        
        sender.isEnabled = false
        checkWin()
        
    }
    
    @IBAction func resetBtnPressed(_ sender: UIButton) {
        for button in buttons{
            button.isEnabled = true
            button.backgroundColor = UIColor.lightGray
        }
        player1 = []
        player2 = []
        playerColor = UIColor.red
        winnerLabel.text = ""
    }
    
    func disableButtons() {
        for button in buttons{
            button.isEnabled = false
        }
    }
    
    func checkWin(){
        if (player1.contains(0) && player1.contains(1) && player1.contains(2)) {
            winnerLabel.text = "Red Player Win"
            disableButtons()
        }else if(player2.contains(0) && player2.contains(1) && player2.contains(2)){
            winnerLabel.text = "Blue Player Win"
            disableButtons()
        }else if (player1.contains(3) && player1.contains(4) && player1.contains(5)) {
            winnerLabel.text = "Red Player Win"
            disableButtons()
        }else if(player2.contains(3) && player2.contains(4) && player2.contains(5)){
            winnerLabel.text = "Blue Player Win"
            disableButtons()
        }else if (player1.contains(6) && player1.contains(7) && player1.contains(8)) {
            winnerLabel.text = "Red Player Win"
            disableButtons()
        }else if(player2.contains(6) && player2.contains(7) && player2.contains(8)){
            winnerLabel.text = "Blue Player Win"
            disableButtons()
        }else if (player1.contains(0) && player1.contains(3) && player1.contains(6)) {
            winnerLabel.text = "Red Player Win"
            disableButtons()
        }else if(player2.contains(0) && player2.contains(3) && player2.contains(6)){
            winnerLabel.text = "Blue Player Win"
            disableButtons()
        }else if (player1.contains(1) && player1.contains(4) && player1.contains(7)) {
            winnerLabel.text = "Red Player Win"
            disableButtons()
        }else if(player2.contains(1) && player2.contains(4) && player2.contains(7)){
            winnerLabel.text = "Blue Player Win"
            disableButtons()
        }else if (player1.contains(2) && player1.contains(5) && player1.contains(8)) {
            winnerLabel.text = "Red Player Win"
            disableButtons()
        }else if(player2.contains(2) && player2.contains(5) && player2.contains(8)){
            winnerLabel.text = "Blue Player Win"
            disableButtons()
        }else if (player1.contains(0) && player1.contains(4) && player1.contains(8)) {
            winnerLabel.text = "Red Player Win"
            disableButtons()
        }else if(player2.contains(0) && player2.contains(4) && player2.contains(8)){
            winnerLabel.text = "Blue Player Win"
            disableButtons()
        }else if (player1.contains(2) && player1.contains(4) && player1.contains(6)) {
            winnerLabel.text = "Red Player Win"
            disableButtons()
        }else if(player2.contains(2) && player2.contains(4) && player2.contains(6)){
            winnerLabel.text = "Blue Player Win"
            disableButtons()
        }
        
        checkDraw()
        
    }
    
    func checkDraw(){
        for button in buttons{
            if button.backgroundColor == defaultColor! {
                return
            }
        }
        winnerLabel.text = "Draw"
        disableButtons()
    }
    

}


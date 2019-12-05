//
//  ViewController.swift
//  Snow Calls
//
//  Created by Landon Follows on 2019-11-28.
//  Copyright © 2019 Landon Follows. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var textField: UITextView!
    
    @IBOutlet weak var textLabel: UILabel!
    
    // Created string variable for numbers being built
    
    var numberLoop = ""
    
    // MARK: Methods
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    
    // Created an action for when the convert button is pressed
    
    @IBAction func Convert(_ sender: Any) {
        
        // guard statement for user not putting input
        
        guard let inputNumber = textField.text, textField.text != ""
            
            else {
            
            textLabel.text = "Please Enter a Phone Number :)"
            
            return
        }
        
        // Variable created to seperate phone numbers
        
        let pieces = inputNumber.lowercased().split(separator: "\n")
        
        // set variables to zero
        
        textLabel.text = ""
        
        // loop to check all symbols
        
        for piece in pieces {

            // Reset symbol from new item
            
            numberLoop = ""
            
            for character in piece {
                
                switch character {
                    
                case "a"..."c":
                    numberLoop += "2"
                    
                case "d"..."f":
                    numberLoop += "3"
                    
                case "g"..."i":
                    numberLoop += "4"
                    
                case "j"..."l":
                    numberLoop += "5"
                    
                case "m"..."o":
                    numberLoop += "6"
                    
                case "p"..."r":
                    numberLoop += "7"
                    
                case "s"..."u":
                    numberLoop += "8"
                    
                case "v"..."z":
                    numberLoop += "9"
                    
                case "0"..."9":
                    numberLoop += String(character)
                    
                default:
                    _ = ""
                    
                }
                
                // Add a dash to number
                
                if numberLoop.count == 3 {
                    
                    numberLoop += "-"
                    
                }
                
                else if numberLoop.count == 7 {
                    
                    numberLoop += "-"
                }
                
            }
            
            // Add a break after every number
            
            textLabel.text! += numberLoop + "\n"
            
        }
    }
}





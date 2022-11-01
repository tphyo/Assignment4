//
//  ViewController.swift
//  calculator
//
//  Created by Thet Hlaing Phyo on 10/28/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    
    var numberOnScreen : Double = 0
    var oldNumber : Double = 0
    var operation : Int = 0
    var forPoint : Bool = false
    var forAddingMore : Bool = false
    var additionOption : Bool = false
    var subtractOption : Bool = false
    var multiplyOption : Bool = false
    var divisionOption : Bool = false
    var option : Bool = false
    //comment
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func percentageAction(_ sender: Any) {
        numberOnScreen = numberOnScreen / 100
        numberLabel.text = String(numberOnScreen)
    }
    
    @IBAction func negativeAction(_ sender: Any) {
        numberOnScreen = -numberOnScreen

        if(numberOnScreen.remainder(dividingBy: 1) == 0) {
            if numberOnScreen == -0.0
            {
                numberLabel.text = String(numberOnScreen)
            }
            else
            {
                numberLabel.text = String(Int(numberOnScreen))
            }
        }
        else {
            numberLabel.text = String(numberOnScreen)
        }
        
    }
    
    @IBAction func clearAction(_ sender: Any) {
        numberLabel.text = "0"
        numberOnScreen = 0
        oldNumber = 0
        operation = 0
        forPoint = false
        forAddingMore = false
        additionOption = false
        subtractOption = false
        multiplyOption = false
        divisionOption = false
        option = false
    }
    
    @IBAction func numberOneAction(_ sender: Any) {
        if !forPoint && !forAddingMore{
            numberLabel.text = "1"
            numberOnScreen = 1
            forAddingMore = true
            option = true
        }
        else {
            numberLabel.text! += "1"
            numberOnScreen = Double(numberLabel.text!)!
        }
        
    }
    
    @IBAction func numberTwoAction(_ sender: Any) {
        if !forPoint && !forAddingMore{
            numberLabel.text = "2"
            numberOnScreen = 2
            forAddingMore = true
            option = true
        }
        else {
            numberLabel.text! += "2"
            numberOnScreen = Double(numberLabel.text!)!
        }
    }
    
    @IBAction func numberThreeAction(_ sender: Any) {
        if !forPoint && !forAddingMore{
            numberLabel.text = "3"
            numberOnScreen = 3
            forAddingMore = true
            option = true
        }
        else {
            numberLabel.text! += "3"
            numberOnScreen = Double(numberLabel.text!)!
        }
    }
    
    @IBAction func numberFourAction(_ sender: Any) {
        if !forPoint && !forAddingMore{
            numberLabel.text = "4"
            numberOnScreen = 4
            forAddingMore = true
            option = true
        }
        else {
            numberLabel.text! += "4"
            numberOnScreen = Double(numberLabel.text!)!
        }
    }
    
    @IBAction func numberFiveAction(_ sender: Any) {
        if !forPoint && !forAddingMore{
            numberLabel.text = "5"
            numberOnScreen = 5
            forAddingMore = true
            option = true
        }
        else {
            numberLabel.text! += "5"
            numberOnScreen = Double(numberLabel.text!)!
        }
    }
    
    @IBAction func numberSixAction(_ sender: Any) {
        if !forPoint && !forAddingMore{
            numberLabel.text = "6"
            numberOnScreen = 6
            forAddingMore = true
            option = true
        }
        else {
            numberLabel.text! += "6"
            numberOnScreen = Double(numberLabel.text!)!
        }
    }
    
    @IBAction func numberSevenAction(_ sender: Any) {
        if !forPoint && !forAddingMore{
            numberLabel.text = "7"
            numberOnScreen = 7
            forAddingMore = true
            option = true
        }
        else {
            numberLabel.text! += "7"
            numberOnScreen = Double(numberLabel.text!)!
        }
    }
    
    @IBAction func numberEightAction(_ sender: Any) {
        if !forPoint && !forAddingMore{
            numberLabel.text = "8"
            numberOnScreen = 8
            forAddingMore = true
            option = true
        }
        else {
            numberLabel.text! += "8"
            numberOnScreen = Double(numberLabel.text!)!
        }
    }
    
    @IBAction func numberNineAction(_ sender: Any) {
        if !forPoint && !forAddingMore{
            numberLabel.text = "9"
            numberOnScreen = 9
            forAddingMore = true
            option = true
        }
        else {
            numberLabel.text! += "9"
            numberOnScreen = Double(numberLabel.text!)!
        }
    }
    
    @IBAction func numberZeroAction(_ sender: Any) {
        if !forPoint && !forAddingMore {
            numberLabel.text = "0"
            numberOnScreen = 0
            option = true
        }
        else {
            numberLabel.text! += "0"
            numberOnScreen = Double(numberLabel.text!)!
        }
    }
    
    @IBAction func pointAction(_ sender: Any) {
        numberLabel.text! += "."
        forPoint = true
    }
    
    @IBAction func divisionAction(_ sender: Any) {
        if divisionOption && option{
            numberOnScreen = oldNumber / numberOnScreen
            if(numberOnScreen.remainder(dividingBy: 1) == 0) {
                numberLabel.text = String(Int(numberOnScreen))
            }
            else {
                numberLabel.text = String(numberOnScreen)
            }
            oldNumber = numberOnScreen
            forPoint = false
            forAddingMore = false
        }
        operation = 1
        oldNumber = numberOnScreen
        forPoint = false
        forAddingMore = false
        divisionOption = true
        option = false
    }
    
    @IBAction func multiplicationAction(_ sender: Any) {
        if multiplyOption && option{
            numberOnScreen = oldNumber * numberOnScreen
            
            if(numberOnScreen.remainder(dividingBy: 1) == 0) {
                numberLabel.text = String(Int(numberOnScreen))
            }
            else {
                numberLabel.text = String(numberOnScreen)
            }
            oldNumber = numberOnScreen
            forPoint = false
            forAddingMore = false
        }
        operation = 2
        oldNumber = numberOnScreen
        forPoint = false
        forAddingMore = false
        multiplyOption = true
        option = false
    }
    
    @IBAction func subtractAction(_ sender: Any) {
        if subtractOption && option{
            numberOnScreen = oldNumber - numberOnScreen
            if(numberOnScreen.remainder(dividingBy: 1) == 0) {
                numberLabel.text = String(Int(numberOnScreen))
            }
            else {
                numberLabel.text = String(numberOnScreen)
            }
            oldNumber = numberOnScreen
            forPoint = false
            forAddingMore = false
        }
        operation = 3
        oldNumber = numberOnScreen
        forPoint = false
        forAddingMore = false
        subtractOption = true
        option = false
    }
    
    @IBAction func additionAction(_ sender: Any) {
        if additionOption && option{
            numberOnScreen = oldNumber + numberOnScreen
            if(numberOnScreen.remainder(dividingBy: 1) == 0) {
                numberLabel.text = String(Int(numberOnScreen))
            }
            else {
                numberLabel.text = String(numberOnScreen)
            }
            oldNumber = numberOnScreen
            forPoint = false
            forAddingMore = false
        }
        operation = 4
        oldNumber = numberOnScreen
        forPoint = false
        forAddingMore = false
        additionOption = true
        option = false
        
    }
    
    @IBAction func equalAction(_ sender: Any) {
        if option {
            if operation == 1 {
                numberOnScreen = oldNumber / numberOnScreen
                if(numberOnScreen.remainder(dividingBy: 1) == 0) {
                    numberLabel.text = String(Int(numberOnScreen))
                }
                else {
                    numberLabel.text = String(numberOnScreen)
                }
            }
            else if operation == 2 {
                numberOnScreen = oldNumber * numberOnScreen
                if(numberOnScreen.remainder(dividingBy: 1) == 0) {
                    numberLabel.text = String(Int(numberOnScreen))
                }
                else {
                    numberLabel.text = String(numberOnScreen)
                }
            }
            else if operation == 3 {
                numberOnScreen = oldNumber - numberOnScreen
                if(numberOnScreen.remainder(dividingBy: 1) == 0) {
                    numberLabel.text = String(Int(numberOnScreen))
                }
                else {
                    numberLabel.text = String(numberOnScreen)
                }
                
            }
            else if operation == 4 {
                numberOnScreen = oldNumber + numberOnScreen
                if(numberOnScreen.remainder(dividingBy: 1) == 0) {
                    numberLabel.text = String(Int(numberOnScreen))
                }
                else {
                    numberLabel.text = String(numberOnScreen)
                }
            }
            forPoint = false
            forAddingMore = false
            option = false
        }
    }
}


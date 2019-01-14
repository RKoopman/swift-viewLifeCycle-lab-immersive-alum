//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 // top die
    @IBOutlet weak var viewOne: UILabel!
    @IBOutlet weak var viewTwo: UILabel!
    @IBOutlet weak var viewThree: UILabel!
    @IBOutlet weak var viewFour: UILabel!
    @IBOutlet weak var viewFive: UILabel!
    @IBOutlet weak var viewSix: UILabel!
    @IBOutlet weak var ViewSev: UILabel!
    @IBOutlet weak var viewEight: UILabel!
    @IBOutlet weak var viewNine: UILabel!
    
  // roll results
    @IBOutlet weak var rollOne: UILabel!
    @IBOutlet weak var rollTwo: UILabel!
    @IBOutlet weak var rollThree: UILabel!
    @IBOutlet weak var rollFour: UILabel!
    @IBOutlet weak var rollFive: UILabel!
    @IBOutlet weak var rollSix: UILabel!
    
    var totalRolls = 0
    var currentRoll = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideDie()
        hideRollsResults()
        print("total rolls : \(totalRolls)")
    }
    
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        totalRolls += 1
        currentRoll = randomDiceRoll()
        hideDie()
        rearrangeDie(roll: currentRoll)
        fillResults(roll: currentRoll)
        print("currentRoll = \(currentRoll)")
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    // fill out results
    func fillResults(roll: Int) {
        switch totalRolls {
        case 1:
            rollOne.text = "\(currentRoll)"
            rollOne.isHidden = false
            print("roll label hit :: \(roll)")
        case 2:
            rollTwo.text = "\(currentRoll)"
            rollTwo.isHidden = false
            print("roll label hit :: \(roll)")
        case 3:
            rollThree.text = "\(currentRoll)"
            rollThree.isHidden = false
            print("roll label hit :: \(roll)")
        case 4:
            rollFour.text = "\(currentRoll)"
            rollFour.isHidden = false
            print("roll label hit :: \(roll)")
        case 5:
            rollFive.text = "\(currentRoll)"
            rollFive.isHidden = false
            print("roll label hit :: \(roll)")
        case 6:
            rollSix.text = "\(currentRoll)"
            rollSix.isHidden = false
            print("roll label hit :: \(roll)")
        default:
            hideRollsResults()
        }
    }
    
    // hides top die & results labels upon startup
    func hideDie() {
        viewOne.isHidden = true
        viewTwo.isHidden = true
        viewThree.isHidden = true
        viewFour.isHidden = true
        viewFive.isHidden = true
        viewSix.isHidden = true
        ViewSev.isHidden = true
        viewEight.isHidden = true
        viewNine.isHidden = true
    }
    func hideRollsResults() {
        rollOne.isHidden = true
        rollTwo.isHidden = true
        rollThree.isHidden = true
        rollFour.isHidden = true
        rollFive.isHidden = true
        rollSix.isHidden = true

    }
    
    // handles the top die
    func rearrangeDie (roll: Int) {
        switch roll {
        case 1:
            viewFive.isHidden = false
            print("rolled \(roll)!")
            print("total rolls : \(totalRolls) \n---------------")
        case 2:
            viewOne.isHidden = false
            viewNine.isHidden = false
            print("rolled \(roll)!")
            print("total rolls : \(totalRolls) \n---------------")
        case 3:
            viewOne.isHidden = false
            viewFive.isHidden = false
            viewNine.isHidden = false
            print("rolled \(roll)!")
            print("total rolls : \(totalRolls) \n---------------")
        case 4:
            viewOne.isHidden = false
            viewThree.isHidden = false
            ViewSev.isHidden = false
            viewNine.isHidden = false
            print("rolled \(roll)!")
            print("total rolls : \(totalRolls) \n---------------")
        case 5:
            viewOne.isHidden = false
            viewThree.isHidden = false
            viewFive.isHidden = false
            ViewSev.isHidden = false
            viewNine.isHidden = false
            print("rolled \(roll)!")
            print("total rolls : \(totalRolls) \n---------------")
        case 6:
            viewOne.isHidden = false
            viewThree.isHidden = false
            viewFour.isHidden = false
            viewSix.isHidden = false
            ViewSev.isHidden = false
            viewNine.isHidden = false
            print("rolled \(roll)!")
            print("total rolls : \(totalRolls) \n---------------")
        default:
            viewOne.isHidden = true
            viewTwo.isHidden = true
            viewThree.isHidden = true
            viewFour.isHidden = true
            viewFive.isHidden = true
            viewSix.isHidden = true
            ViewSev.isHidden = true
            viewEight.isHidden = true
            viewNine.isHidden = true
            print("total rolls : \(totalRolls) \n---------------")
        }
    }
}

//
//  ViewController.swift
//  FinalGradeCalculator
//
//  Created by GIOVANNI GARCIA on 11/12/18.
//  Copyright © 2018 GIOVANNI GARCIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentGradeText: UITextField!
    @IBOutlet weak var desiredGradeText: UITextField!
    @IBOutlet weak var percentageText: UITextField!
    @IBOutlet weak var necassaryGradeLabel: UILabel!
    @IBOutlet weak var extraCreditLabel: UILabel!
    

    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func onCalculatedTapped(_ sender: Any) {
        guard  let desiredGrade = Double(desiredGradeText.text!) else {return}
        guard let currentGrade = Double(currentGradeText.text!) else {return}
        guard let examWeight = Double(percentageText.text!) else {return}
        let necassaryGrade = (100 * currentGrade - (100 - examWeight) * desiredGrade) / examWeight
        necassaryGradeLabel.text = String(necassaryGrade)
        
        if necassaryGrade <= 100.0 {
             self.view.backgroundColor = .green
        }else{
            self.view.backgroundColor = .red
           extraCreditLabel.text = "Ask the professor for any extra credit opportunities!"
        }
        
        
        
    }
    



}


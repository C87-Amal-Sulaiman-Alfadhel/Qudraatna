//
//  QuizVC.swift
//  Qudraatna
//
//  Created by Amal Alfadhel on 10/20/20.
//

import UIKit

class QuizVC: UIViewController {
    
    let questions = ["Which of the following is classified as a mixture?", "What is the difference between No and NO?", "Which of the following elements is paired with the wrong symbol?", "Which of the following is a buffer solution?", "How many moles of (H) are present in 13 moles of water?"]
    let answers = [["air", "pure gold", "table salt", "water"], ["NO: compound, No: element", "NO: element, No: compound", "both are elements", "both are compounds"], ["Nitrogen-Ni", "Silver-Ag", "Magnesium-Mg", "Lithium-Li"], ["weak acid + salt of this acid", "strong base + weak base", "strong base + salt of this base", "strong acid + salt of this acid"], ["26 mole", "22 mole", "15 mole", "13 mole"]]
    
    var currentQuestion = 0
    var rightAnswerPlacement: UInt32 = 0
    var points = 0;

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var status: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
        @IBAction func action(_ sender: AnyObject) {
            if (sender.tag == Int(rightAnswerPlacement)) {
                status.text = "Answer is Correct✅"
                points += 20
            } else {
                status.text = "Answer is Wrong❌"
            }
            if (currentQuestion != questions.count) {
                newQuestion()
            } else {
                performSegue(withIdentifier: "ShowResults", sender: self)
            }
        }
    
    override func viewDidAppear(_ animated: Bool) {
        newQuestion()
    }
    
    func newQuestion() {
        lbl.text = questions[currentQuestion]
        rightAnswerPlacement = arc4random_uniform(4)+1
        
        var button: UIButton = UIButton()
        var x = 1
        
        for i in 1...4 {
            button = view.viewWithTag(i) as! UIButton
            
            if (i == Int(rightAnswerPlacement)) {
                button.setTitle(answers[currentQuestion][0], for: .normal)
            } else {
                button.setTitle(answers[currentQuestion][x], for: .normal)
                x += 1
            }
        }
        currentQuestion += 1
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowResults" {
            var vc = segue.destination as! ResultsVC
            vc.finalpoints = self.points 
        }
    }

}

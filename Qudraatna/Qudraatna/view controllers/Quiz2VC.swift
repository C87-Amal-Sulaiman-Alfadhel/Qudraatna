//
//  Quiz2VC.swift
//  Qudraatna
//
//  Created by Amal Alfadhel on 10/21/20.
//

import UIKit

class Quiz2VC: UIViewController {
    
    let questionsm = ["The equation |4x-1|-3x=1 has:", "If a is 30% of x and b is 6% of x, then b is what percent of a?", "25% of 28 is what percent of 4?", "6 workers can finish a job in 6 days, how many workers are needed to finish the same job in 4 days?", "If the speed of a car is 45 Km/h, what is the speed of the car in Km/min?"]
    let answersm = [["only two solutions", "only three solutions", "no solutions", "only one solution"], ["20%", "15%", "8%", "10%"], ["175%", "7%", "70%", "128%"], ["9", "12", "4", "8"], ["0.75", "2.7", "0.5", "1.33"]]

    var currentQuestionm = 0
    var rightAnswerPlacementm: UInt32 = 0
    var pointsm = 0;
    
    @IBOutlet weak var lblm: UILabel!
    @IBOutlet weak var statusm: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionm(_ sender: AnyObject) {
        if (sender.tag == Int(rightAnswerPlacementm)) {
            statusm.text = "Answer is Correct✅"
            pointsm += 20
        } else {
            statusm.text = "Answer is Wrong❌"
        }
        if (currentQuestionm != questionsm.count) {
            newQuestionm()
        } else {
            performSegue(withIdentifier: "ShowmResults", sender: self)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        newQuestionm()
    }

    func newQuestionm() {
        lblm.text = questionsm[currentQuestionm]
        rightAnswerPlacementm = arc4random_uniform(4)+1
        
        var buttonm: UIButton = UIButton()
        var xm = 1
        
        for i in 1...4 {
            buttonm = view.viewWithTag(i) as! UIButton
            
            if (i == Int(rightAnswerPlacementm)) {
                buttonm.setTitle(answersm[currentQuestionm][0], for: .normal)
            } else {
                buttonm.setTitle(answersm[currentQuestionm][xm], for: .normal)
                xm += 1
            }
        }
        currentQuestionm += 1
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
        if segue.identifier == "ShowmResults" {
            var vc = segue.destination as! Results2VC
            vc.finalmpoints = self.pointsm
        }
    }

}

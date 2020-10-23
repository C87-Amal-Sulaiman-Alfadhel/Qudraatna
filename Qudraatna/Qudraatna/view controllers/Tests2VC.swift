//
//  Tests2VC.swift
//  Qudraatna
//
//  Created by Amal Alfadhel on 10/21/20.
//

import UIKit

class Tests2VC: UIViewController {

    var index: Int = 0
    var finalsamplem = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func testm1(_ sender: UIButton) {
        index = sender.tag 
    }
    @IBAction func testm2(_ sender: UIButton) {
        index = sender.tag
    }
    @IBAction func testm3(_ sender: UIButton) {
        index = sender.tag
    }
    @IBAction func testm4(_ sender: UIButton) {
        index = sender.tag
    }
    
    @IBAction func testmNumberChosen(_ sender: Any) {
        if index == 1 {
            self.finalsamplem = mathArray[0].subjectTest1
        } else if index == 2 {
            self.finalsamplem = mathArray[0].subjectTest2
        } else if index == 3 {
            self.finalsamplem = mathArray[0].subjectTest3
        } else if index == 4 {
            self.finalsamplem = mathArray[0].subjectTest4
        }
        performSegue(withIdentifier: "PTestsmChosen", sender: self)
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
        var vc = segue.destination as! PDFB2VC
        vc.finaltestm = self.finalsamplem
    }
    
}

//
//  TestsVC.swift
//  Qudraatna
//
//  Created by Amal Alfadhel on 10/20/20.
//

import UIKit

class TestsVC: UIViewController {
    
    var index: Int = 0
    var finalsample = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func test1(_ sender: UIButton) {
        index = sender.tag
        self.finalsample = ChemistryArray[0].subjectTest1
        performSegue(withIdentifier: "PTestChosen", sender: self)
    }
    @IBAction func test2(_ sender: UIButton) {
        index = sender.tag
        self.finalsample = ChemistryArray[0].subjectTest2
        performSegue(withIdentifier: "PTestChosen", sender: self)
    }
    @IBAction func test3(_ sender: UIButton) {
        index = sender.tag
        self.finalsample = ChemistryArray[0].subjectTest3
        performSegue(withIdentifier: "PTestChosen", sender: self)
    }
    @IBAction func test4(_ sender: UIButton) {
        index = sender.tag
        self.finalsample = ChemistryArray[0].subjectTest4
        performSegue(withIdentifier: "PTestChosen", sender: self)
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
    var vc = segue.destination as! PDFBVC
    vc.finaltestc = self.finalsample
    }
    
}

//
//  Subject2VC.swift
//  Qudraatna
//
//  Created by Amal Alfadhel on 10/21/20.
//

import UIKit

class Subject2VC: UIViewController {

    var subm = ""
    var index: Int = 0
    var samplem = ""
    var samplem2 = ""
    var samplem3 = ""
    var samplem4 = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func KUmbutton(_ sender: UIButton) {
        index = sender.tag
        self.subm = mathArray[0].subjectKuwaitUniNotes
        performSegue(withIdentifier: "NotesChosen", sender: self)
    }
    
    @IBAction func pdfmnotes(_ sender: UIButton) {
        index = sender.tag
        self.subm = mathArray[0].subjectStudentNotes
        performSegue(withIdentifier: "NotesChosen", sender: self)
    }
    
    @IBAction func tsmbutton(_ sender: UIButton) {
        self.samplem = mathArray[0].subjectTest1
        self.samplem2 = mathArray[0].subjectTest2
        self.samplem3 = mathArray[0].subjectTest3
        self.samplem4 = mathArray[0].subjectTest4
        performSegue(withIdentifier: "TestsmChosen", sender: self)
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
        if segue.identifier == "NotesChosen" {
            var vc = segue.destination as! PDF2VC
            vc.finalsubm = self.subm
        } else if segue.identifier == "TestsmChosen" {
            var vct = segue.destination as! Tests2VC
            vct.finalsamplem = self.samplem
        }
    }
    
}

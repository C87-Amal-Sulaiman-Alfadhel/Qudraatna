//
//  SubjectVC.swift
//  Qudraatna
//
//  Created by Amal Alfadhel on 10/20/20.
//

import UIKit

class SubjectVC: UIViewController {
    
    var subc = ""
    var index: Int = 0
    var sample = ""
    var sample2 = ""
    var sample3 = ""
    var sample4 = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func KUbutton(_ sender: UIButton) {
        index = sender.tag
        self.subc = ChemistryArray[0].subjectKuwaitUniNotes
        performSegue(withIdentifier: "NotesCChosen", sender: self)
    }
    
    @IBAction func Studentbutton(_ sender: UIButton) {
        index = sender.tag
        self.subc = ChemistryArray[0].subjectStudentNotes
        performSegue(withIdentifier: "NotesCChosen", sender: self)
    }
    
    @IBAction func tsbutton(_ sender: UIButton) {
        self.sample = ChemistryArray[0].subjectTest1
        self.sample2 = ChemistryArray[0].subjectTest2
        self.sample3 = ChemistryArray[0].subjectTest3
        self.sample4 = ChemistryArray[0].subjectTest4
        performSegue(withIdentifier: "TestsChosen", sender: self)
    }
    
    @IBAction func VQbutton(_ sender: UIButton) {
        performSegue(withIdentifier: "QuizChosen", sender: self)
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
        if segue.identifier == "NotesCChosen" {
            var vc = segue.destination as! PDFVC
            vc.finalsubc = self.subc
        } else if segue.identifier == "TestsChosen" {
            var vct = segue.destination as! TestsVC
            vct.finalsample = self.sample
        } 
    }
    
    
    
}

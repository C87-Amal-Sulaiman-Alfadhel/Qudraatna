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

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func KUbutton(_ sender: UIButton) {
        index = sender.tag
    }
    
    @IBAction func Studentbutton(_ sender: UIButton) {
        index = sender.tag
    }
    
    @IBAction func pdfnotes(_ sender: Any) {
        if index == 1 {
            self.subc = ChemistryArray[0].subjectKuwaitUniNotes
        }
        performSegue(withIdentifier: "KUChosen", sender: self)
    }
    
    @IBAction func pdfstunotes(_ sender: Any) {
        if index == 2 {
            self.subc = ChemistryArray[0].subjectStudentNotes
        }
        performSegue(withIdentifier: "StudentChosen", sender: self)
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
        var vc = segue.destination as! PDFVC
        vc.finalsubc = self.subc 
    }
    
    
}

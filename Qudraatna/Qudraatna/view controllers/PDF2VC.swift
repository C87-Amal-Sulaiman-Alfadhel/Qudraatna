//
//  PDF2VC.swift
//  Qudraatna
//
//  Created by Amal Alfadhel on 10/21/20.
//

import UIKit
import PDFKit

class PDF2VC: UIViewController {

    var finalsubm = ""
    
    @IBOutlet weak var pdfmview: PDFView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chosenm()
        // Do any additional setup after loading the view.
    }
    
    func chosenm() {
        if finalsubm == mathArray[0].subjectKuwaitUniNotes {
        if let path = Bundle.main.path(forResource: "Math KU Notes", ofType: "pdf") {
        let url = URL(fileURLWithPath: path)
            if let pdfDocument = PDFDocument(url: url) {
                pdfmview.autoScales = true
                pdfmview.displayMode = .singlePageContinuous
                pdfmview.displayDirection = .vertical
                pdfmview.document = pdfDocument
            }
        }
        } else if finalsubm == mathArray[0].subjectStudentNotes {
            if let path = Bundle.main.path(forResource: "Math Student Notes", ofType: "pdf") {
            let url = URL(fileURLWithPath: path)
                if let pdfDocument = PDFDocument(url: url) {
                    pdfmview.autoScales = true
                    pdfmview.displayMode = .singlePageContinuous
                    pdfmview.displayDirection = .vertical
                    pdfmview.document = pdfDocument
                }
            }

        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

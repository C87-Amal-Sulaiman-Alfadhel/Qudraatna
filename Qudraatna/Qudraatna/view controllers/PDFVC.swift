//
//  PDFVC.swift
//  Qudraatna
//
//  Created by Amal Alfadhel on 10/20/20.
//

import UIKit
import PDFKit

class PDFVC: UIViewController {

    var finalsubc = ""
    
    @IBOutlet weak var pdfView: PDFView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        chosen()
    }
        
       
    func chosen() {
        if finalsubc == ChemistryArray[0].subjectKuwaitUniNotes {
        if let path = Bundle.main.path(forResource: "Chemistry KU Notes", ofType: "pdf") {
        let url = URL(fileURLWithPath: path)
            if let pdfDocument = PDFDocument(url: url) {
                pdfView.autoScales = true
                pdfView.displayMode = .singlePageContinuous
                pdfView.displayDirection = .vertical
                pdfView.document = pdfDocument
            }
        }
    
        } else if finalsubc == ChemistryArray[0].subjectStudentNotes {
            if let path = Bundle.main.path(forResource: "Chemistry Student Notes", ofType: "pdf") {
            let url = URL(fileURLWithPath: path)
                if let pdfDocument = PDFDocument(url: url) {
                    pdfView.autoScales = true
                    pdfView.displayMode = .singlePageContinuous
                    pdfView.displayDirection = .vertical
                    pdfView.document = pdfDocument
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

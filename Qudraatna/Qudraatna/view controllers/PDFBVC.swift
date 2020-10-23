//
//  PDFBVC.swift
//  Qudraatna
//
//  Created by Amal Alfadhel on 10/21/20.
//

import UIKit
import PDFKit

class PDFBVC: UIViewController {

    @IBOutlet weak var pdfc2view: PDFView!
    
    var finaltestc = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chosenTest()
        // Do any additional setup after loading the view.
    }
            
    func chosenTest() {
        if finaltestc == ChemistryArray[0].subjectTest1 {
        if let path = Bundle.main.path(forResource: "C1", ofType: "pdf") {
        let url = URL(fileURLWithPath: path)
            if let pdfDocument = PDFDocument(url: url) {
                pdfc2view.autoScales = true
                pdfc2view.displayMode = .singlePageContinuous
                pdfc2view.displayDirection = .vertical
                pdfc2view.document = pdfDocument
                }
            }
        } else if finaltestc == ChemistryArray[0].subjectTest2 {
            if let path = Bundle.main.path(forResource: "C2", ofType: "pdf") {
            let url = URL(fileURLWithPath: path)
                if let pdfDocument = PDFDocument(url: url) {
                    pdfc2view.autoScales = true
                    pdfc2view.displayMode = .singlePageContinuous
                    pdfc2view.displayDirection = .vertical
                    pdfc2view.document = pdfDocument
                }
            }
        } else if finaltestc == ChemistryArray[0].subjectTest3 {
            if let path = Bundle.main.path(forResource: "C3", ofType: "pdf") {
            let url = URL(fileURLWithPath: path)
                if let pdfDocument = PDFDocument(url: url) {
                    pdfc2view.autoScales = true
                    pdfc2view.displayMode = .singlePageContinuous
                    pdfc2view.displayDirection = .vertical
                    pdfc2view.document = pdfDocument
                }
            }
        } else if finaltestc == ChemistryArray[0].subjectTest4 {
            if let path = Bundle.main.path(forResource: "C4", ofType: "pdf") {
            let url = URL(fileURLWithPath: path)
                if let pdfDocument = PDFDocument(url: url) {
                    pdfc2view.autoScales = true
                    pdfc2view.displayMode = .singlePageContinuous
                    pdfc2view.displayDirection = .vertical
                    pdfc2view.document = pdfDocument
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

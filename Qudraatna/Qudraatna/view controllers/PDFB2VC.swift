//
//  PDFB2VC.swift
//  Qudraatna
//
//  Created by Amal Alfadhel on 10/21/20.
//

import UIKit
import PDFKit

class PDFB2VC: UIViewController {
    
    @IBOutlet weak var pdfm2view: PDFView!
    
    var finaltestm = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        chosenmTest()
        // Do any additional setup after loading the view.
    }
    
    func chosenmTest() {
        if finaltestm == mathArray[0].subjectTest1 {
        if let path = Bundle.main.path(forResource: "M1", ofType: "pdf") {
        let url = URL(fileURLWithPath: path)
            if let pdfDocument = PDFDocument(url: url) {
                pdfm2view.autoScales = true
                pdfm2view.displayMode = .singlePageContinuous
                pdfm2view.displayDirection = .vertical
                pdfm2view.document = pdfDocument
                }
            }
        } else if finaltestm == mathArray[0].subjectTest2 {
            if let path = Bundle.main.path(forResource: "M2", ofType: "pdf") {
            let url = URL(fileURLWithPath: path)
                if let pdfDocument = PDFDocument(url: url) {
                    pdfm2view.autoScales = true
                    pdfm2view.displayMode = .singlePageContinuous
                    pdfm2view.displayDirection = .vertical
                    pdfm2view.document = pdfDocument
                }
            }
        } else if finaltestm == mathArray[0].subjectTest3 {
            if let path = Bundle.main.path(forResource: "M3", ofType: "pdf") {
            let url = URL(fileURLWithPath: path)
                if let pdfDocument = PDFDocument(url: url) {
                    pdfm2view.autoScales = true
                    pdfm2view.displayMode = .singlePageContinuous
                    pdfm2view.displayDirection = .vertical
                    pdfm2view.document = pdfDocument
                }
            }
        } else if finaltestm == mathArray[0].subjectTest4 {
            if let path = Bundle.main.path(forResource: "M4", ofType: "pdf") {
            let url = URL(fileURLWithPath: path)
                if let pdfDocument = PDFDocument(url: url) {
                    pdfm2view.autoScales = true
                    pdfm2view.displayMode = .singlePageContinuous
                    pdfm2view.displayDirection = .vertical
                    pdfm2view.document = pdfDocument
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

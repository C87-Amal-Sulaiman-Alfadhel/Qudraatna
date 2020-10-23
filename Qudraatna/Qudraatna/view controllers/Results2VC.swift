//
//  Results2VC.swift
//  Qudraatna
//
//  Created by Amal Alfadhel on 10/21/20.
//

import UIKit

class Results2VC: UIViewController {

    @IBOutlet weak var percentagem: UILabel!
    
    var finalmpoints: Int = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        percentagem.text = String (finalmpoints) + "%"
        
        // Do any additional setup after loading the view.
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

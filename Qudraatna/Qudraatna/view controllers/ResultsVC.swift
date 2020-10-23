//
//  ResultsVC.swift
//  Qudraatna
//
//  Created by Amal Alfadhel on 10/20/20.
//

import UIKit

class ResultsVC: UIViewController {
    
    @IBOutlet weak var percentage: UILabel!

    var finalpoints: Int = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true

        percentage.text = String (finalpoints) + "%"
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButton(_ sender: Any) {
        let HomeVC = storyboard?.instantiateViewController(identifier: "homeVC") as? UINavigationController
                view.window?.rootViewController = HomeVC
                view.window?.makeKeyAndVisible()
        
        self.navigationController?.popToRootViewController(animated: true)
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

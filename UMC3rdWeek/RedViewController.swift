//
//  RedViewController.swift
//  UMC3rdWeek
//
//  Created by 077tech on 2022/10/05.
//

import UIKit

class RedViewController: UIViewController {

    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true)
    }
    
    var getData : String = ""
    
    @IBOutlet weak var redLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.redLabel.text = getData
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

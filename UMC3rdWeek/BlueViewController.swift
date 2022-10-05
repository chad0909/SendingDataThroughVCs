//
//  BlueViewController.swift
//  UMC3rdWeek
//
//  Created by 077tech on 2022/10/05.
//

import UIKit

class BlueViewController: UIViewController {

    var getData : String = ""
    
    @IBOutlet weak var blueLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.blueLabel.text = getData
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

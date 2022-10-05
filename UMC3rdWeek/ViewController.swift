//
//  ViewController.swift
//  UMC3rdWeek
//
//  Created by 077tech on 2022/10/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func pressRedButton(_ sender: Any) {
        guard let redViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RedViewController") as? RedViewController else { return }
        
        redViewController.getData = redTextField.text!
        
        present(redViewController, animated: true)
    }
    
    @IBAction func pressBlueButton(_ sender: Any) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "BlueViewController") as? BlueViewController else {return}
        
        viewController.getData = blueTextField.text!
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func pressGreenButton(_ sender: Any) {
        performSegue(withIdentifier: "mainToGreen", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is GreenViewController{
            guard let greenViewController = segue.destination as? GreenViewController else {return}
            greenViewController.getData = greenTextField.text!
        }
    }
    
    
    
    
    
}


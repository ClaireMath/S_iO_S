//
//  ViewController.swift
//  SiOS
//
//  Created by Anaïs on 05/04/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var pompier: UIButton!
    @IBOutlet weak var police: UIButton!
    @IBOutlet weak var urgence: UIButton!
    let defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        // test
        if (defaults.string(forKey: "Nom") == nil){
                    
                    if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "profileId") as? ProfileController {
                        
                        self.present(vc, animated: true)
                    }

        // Do any additional setup after loading the view.
        }
    }

    @IBAction func callDocteur(_ sender: Any) {
    }
    
    @IBAction func callPompier(_ sender: Any) {
    }
    

    @IBAction func callPolice(_ sender: Any) {
    }
}


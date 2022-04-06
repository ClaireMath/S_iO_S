//
//  ViewController.swift
//  SiOS
//
//  Created by Anaïs on 05/04/2022.
//

import UIKit

class ViewController: UIViewController {
    let defaults = UserDefaults.standard
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if (defaults.string(forKey: "Nom") == nil){
            
            if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "profileId") as? ProfilViewController {
                
                self.present(vc, animated: true)
            }
            
            
            
        }
        // Do any additional setup after loading the view.
    }


}


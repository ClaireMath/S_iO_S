//
//  ViewController.swift
//  SiOS
//
//  Created by Anaïs on 05/04/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // test
        // Do any additional setup after loading the view.
    }
    @IBAction func changeProfile(_ sender: Any) {
        // Afficher un modal
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "profileId") as? ProfilViewController {

                        self.present(vc, animated: true)
                    }
    

}

}

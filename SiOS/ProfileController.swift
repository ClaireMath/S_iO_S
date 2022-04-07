//
//  ProfileController.swift
//  SiOS
//
//  Created by Anaïs on 07/04/2022.
//

import UIKit

class ProfileController: UIViewController {

    @IBOutlet weak var validationButton: UIButton!

    @IBOutlet weak var adresseText: UITextField!
    @IBOutlet weak var numeroCarteVital: UITextField!
    @IBOutlet weak var contactNum: UITextField!
    @IBOutlet weak var poidsText: UITextField!
    @IBOutlet weak var genreButton: UISegmentedControl!
    @IBOutlet weak var prenomText: UITextField!
    @IBOutlet weak var nameText: UITextField!
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
                   view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionButton(_ sender: Any) {
                defaults.set(nameText.text, forKey: "Nom")
                defaults.set(prenomText.text, forKey: "Prenom")
                
                defaults.set(genreButton.selectedSegmentIndex, forKey: "genre")
                
                defaults.set(poidsText.text, forKey: "Poid")
                
                defaults.set(contactNum.text, forKey: "ContactNum")
                
                defaults.set(numeroCarteVital.text, forKey: "NumeroCarteVital")
                
                defaults.set(adresseText.text, forKey: "Adresse")
                self.dismiss(animated: true)

    }
    @objc func dismissKeyboard() {
            //Causes the view (or one of its embedded text fields) to resign the first responder status.
            view.endEditing(true)
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

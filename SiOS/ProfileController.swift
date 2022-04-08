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
            
            view.endEditing(true)
        }


}

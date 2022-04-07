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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionButton(_ sender: Any) {
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

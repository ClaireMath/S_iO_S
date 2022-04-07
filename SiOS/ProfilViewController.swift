//
//  ProfilViewController.swift
//  SiOS
//
//  Created by Anaïs on 06/04/2022.
//

import UIKit

class ProfilViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var prenomText: UITextField!
    @IBOutlet weak var genreButton: UISegmentedControl!
    @IBOutlet weak var poidsText: UITextField!
    @IBOutlet weak var contactNum: UITextField!
    @IBOutlet weak var numeroCarteVitale: UITextField!
    @IBOutlet weak var adresseText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

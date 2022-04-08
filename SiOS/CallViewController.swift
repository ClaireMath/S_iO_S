//
//  CallViewController.swift
//  SiOS
//
//  Created by Anaïs on 06/04/2022.
//

import UIKit

class CallViewController: UIViewController {

    var text: String = ""
    @IBOutlet weak var sos: UIButton!
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

    @IBAction func callSos(_ sender: Any) {
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "callId") as? CallModalController {
                    vc.text = self.text
                    self.present(vc, animated: true)
                }
    }
}

//
//  CallModalController.swift
//  SiOS
//
//  Created by Anaïs on 07/04/2022.
//

import UIKit

class CallModalController: UIViewController {

    var text : String = ""
    @IBOutlet weak var numLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let phone = "tel://982374234"
        let url = URL(string: phone)!
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
        numLabel.text = self.text
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
           //Dispose of any resources that can be recreated.
        }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func raccrocherButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
}

import UIKit

class CallViewController: UIViewController {

    var text: String = ""
    @IBOutlet weak var sos: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    // Modal Button
    @IBAction func callSos(_ sender: Any) {
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "callId") as? CallModalController {
                    vc.text = self.text
                    self.present(vc, animated: true)
                }
    }
}

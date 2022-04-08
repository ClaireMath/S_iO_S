import UIKit

class CallModalController: UIViewController {

    var text : String = ""
    @IBOutlet weak var numLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let phone = "tel:" + self.text
        let url = URL(string: phone)!
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
        numLabel.text = self.text
      
    }
    
    override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
         
        }

    @IBAction func racc(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    
}

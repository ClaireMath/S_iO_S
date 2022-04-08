import UIKit

class ContactTableViewController: UITableViewController {
    
    
    // initialisation of few emergency contacts
    
    
    
    var contacts = ["Pompiers : 18", "Samu : 15", "Police Secours : 17", "Numéro d'urgence européen : 112", "Urgence sourds ou malentendants : 114", "Centres anti-poisons de France : 0140054848", "Drogues infos service : 0800231313", "Ecoute alcool : 0980980930", "Ecoute cannabis : 0980980940", "Sida infos service : 0800840800", "SOS médecins : 3624", "Samu social : 115"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.contacts.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        cell.textLabel?.text = self.contacts[indexPath.row]


        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedContact = contacts[indexPath.row]
        
        if let viewController = storyboard?.instantiateViewController(identifier: "callId") as? CallModalController {
            let tel = selectedContact.components(separatedBy: ": ")
            viewController.text = tel[1]
            navigationController?.pushViewController(viewController, animated: true)
        }
    }

}

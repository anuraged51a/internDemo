
import UIKit
import CoreData

class ratingTable: UITableViewController {
    
    var ratings: [NSManagedObject] = []
        
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellIdentifier")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //1
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        let managedContext =
            appDelegate.persistentContainer.viewContext
        //2
        let fetchRequest =
            NSFetchRequest<NSManagedObject>(entityName: "RaterTable")
        //3
        do {
            ratings = try managedContext.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }
    


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ratings.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ratingObj = ratings[indexPath.row]
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier")
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cellIdentifier")
        }
        cell!.textLabel?.text = ratingObj.value(forKeyPath: "rating") as? String
        cell!.detailTextLabel?.text = ratingObj.value(forKeyPath: "time") as? String
        //cell!.textLabel?.text = ratings[indexPath.row][0]
        //cell!.detailTextLabel?.text = ratings[indexPath.row][1]
        return cell!
    }
}

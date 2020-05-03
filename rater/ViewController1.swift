import UIKit
import CoreData

class ViewController1: UIViewController {
    //SliderScreen
    var ratings: [NSManagedObject] = []
    var ratValue: String = "0"
    var minV = String()
    var maxV = String()
    
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var sliderOutlet: UISlider!
    
    @IBAction func slider(_ sender: UISlider) {
        sliderLabel.text = String(Int(sender.value))
        ratValue = String(Int(sender.value))
    }
    
    @IBAction func submitButton(_ sender: UIButton) {
        var timev : String
        let currentDateTime = Date()
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        formatter.dateStyle = .short
        timev = formatter.string(from: currentDateTime)
        print("Start")
        save(rating: ratValue, time: String(timev))
        print("Success")
    }
    
    func save(rating: String, time: String) {
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        // 1
        let managedContext =
            appDelegate.persistentContainer.viewContext
        print("1")
        // 2
        let entity =
            NSEntityDescription.entity(forEntityName: "RaterTable",
                                       in: managedContext)!
        print("2")
        let ratingObj = NSManagedObject(entity: entity,
                                     insertInto: managedContext)
        print("2b")
        // 3
        ratingObj.setValue(rating, forKeyPath: "rating")
        ratingObj.setValue(time, forKey: "time")
        print("3")
        // 4
        do {
            try managedContext.save()
            ratings.append(ratingObj)
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
        print("4")
    }

    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "viewRating2"{
            let controller  = segue.destination as! ratingTable
        }
    }*/
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Slider custom after getting segue
        sliderOutlet.minimumValue = Float(minV)!
        sliderOutlet.maximumValue = Float(maxV)!
        sliderOutlet.value = (Float(maxV)! - Float(minV)!)/2
        sliderLabel.text = String(Int(sliderOutlet.value))
    }
    
}

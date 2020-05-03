import UIKit

class ViewController: UIViewController {

    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     if segue.identifier == "viewRating1"{
     let controller  = segue.destination as! ratingTable
     }
     }*/
    
    @IBOutlet weak var minValue: UITextField!
    @IBOutlet weak var maxValue: UITextField!
    

    @IBAction func ratingSelect(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}


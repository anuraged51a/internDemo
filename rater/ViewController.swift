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
        if minValue.text != "" && maxValue.text != "" && (Int(maxValue.text!)!)<10 && (Int(minValue.text!)!)>=0{
            sender.setTitle("Range" + minValue.text! + maxValue.text!, for: .normal)
            performSegue(withIdentifier: "submitPage", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "submitPage"{
            var submitController = segue.destination as! ViewController1
            submitController.minV = minValue.text ?? ""
            submitController.maxV = maxValue.text ?? ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}


//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//


import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var bmiResultLbl: UILabel!
    @IBOutlet weak var adviceLbl: UILabel!
    
    var bmiValue : String?
    var advice : String?
    var color : UIColor?
    
    @IBAction func recalculateBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiResultLbl.text = bmiValue
        adviceLbl.text = advice
        view.backgroundColor = color
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

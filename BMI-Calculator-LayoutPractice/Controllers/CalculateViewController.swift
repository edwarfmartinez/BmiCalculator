//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//


import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var wheightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    @IBAction func heightSlider(_ sender: UISlider) {
        let heightValue = String(format: "%.2f", sender.value)
        heightLabel.text = "\(heightValue)m"
    }
    
    @IBAction func wheightSlider(_ sender: UISlider) {
        let wheightValue = String(format: "%.0f", sender.value)
        weightLabel.text = "\(wheightValue)Kg"
    }
    
    @IBAction func bmiCalculate(_ sender: UIButton) {
        
        let height = heightSlider.value
        let wheight = wheightSlider.value
        calculatorBrain.calculateBMI(_height: height, _wheight: wheight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"
        {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.formatCalculateBMI()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


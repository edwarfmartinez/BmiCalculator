//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//

import Foundation
import UIKit
struct CalculatorBrain{
    
    var bmi: BMI?
    
    mutating func calculateBMI(_height: Float, _wheight: Float){
        let value = _wheight/pow(_height,2)
        if(value < 18.5)
        {
            bmi = BMI(value: value, advice: "Eat more pies!", color: #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1))
        }
        else if (value < 24.9)
        {
            bmi = BMI(value: value, advice: "Fit a a Fiddle!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }
        else
        {
            bmi = BMI(value: value, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    
        return 
    }
    
    func formatCalculateBMI()-> String{
        return String(format: "%.2f", bmi?.value ?? 0.0)
    }
    
    func getAdvice()-> String{
        return bmi?.advice ?? "No advice"
    }
    
    
    func getColor()-> UIColor{
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
}

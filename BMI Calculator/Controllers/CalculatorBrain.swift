//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Kushagra Sinha on 24/06/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight/pow(height,2)
        
        let color = (underweight: #colorLiteral(red: 0.3843137255, green: 0.6784313725, blue: 0.9960784314, alpha: 1), healthy: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), overweight: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue , advice: "Eat more pies", color: color.underweight)
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue , advice: "Fit as Fiddle", color: color.healthy)
        }else{
            bmi = BMI(value: bmiValue , advice: "Eat less pies", color: color.overweight)
        }
    }
    
    func getAdvice()-> String{
        return bmi?.advice ?? "No Advice"
    }
    func getColor()-> UIColor{
        return bmi?.color ?? UIColor.white
    }
    
    func getBMIValue()-> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
}


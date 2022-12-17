//
//  ViewController.swift
//  DeepMehta_FinalTest
//
//Created by Deep Mehta on 16/12/22.
//  Final Exam - iOS Development
//  Description: Basic application for bmi calculator.
//

import UIKit

class ViewController: UIViewController {

    let context = (UIApplication.shared.delegate as! AppDelegate).NSPersistentContainer.viewContext
      
    private var bmiRecords = [Records]()
    
    var weighttxt : Float? = 0
    
    var bmitxt : Float? = 0
    
    var heighttxt : Float? = 0

    

    @IBOutlet weak var nameLbl: UITextField!
    
    @IBOutlet weak var genderLbl: UITextField!
    
    @IBOutlet weak var ageLbl: UITextField!
    
    @IBOutlet weak var weightLbl: UITextField!
    
    @IBOutlet weak var heightLbl: UITextField!
    
    @IBOutlet weak var bmiResultLbl: UILabel!
    
    @IBOutlet weak var bmiMessageLbl: UILabel!
    
    @IBOutlet weak var unitSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiResultLbl.text = ""
        bmiMessageLbl.text = ""
    }
    
    
    @IBAction func unitSwitchTap(_ sender: UISwitch) {
        if unitSwitch.isOn {
            weightLbl.placeholder = "pounds"
            heightLbl.placeholder = "inches"
            unitSwitch.setOn(true, animated:true)
            }
        else {
                weightLbl.placeholder = "kilograms"
                heightLbl.placeholder = "metres"
                unitSwitch.setOn(false, animated:true)
            }
    }
    
    
    @IBAction func calculateButtonTap(_ sender: UIButton) {
        if (self.weightLbl.text!=="" || self.heightLbl.text!=="")
                {
                    let alertController = UIAlertController(title: "Field/s left empty!", message:
                                                                "Please enter both Height and Weight", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .cancel))

                    self.present(alertController, animated: true, completion: nil)
                    
                }
                else
                {
                    weighttxt = Float(self.weightLbl.text!)!
                    heighttxt = Float(self.heightLbl.text!)!
                    
                    if unitSwitch.isOn
                    {
                        bmitxt = Float((weighttxt!*703)/(heighttxt!*heighttxt!))
                        self.bmiResultLbl.text = String(format:"%.\(2)f", bmitxt!)
                        
                        // Check condirtions usinf if else statements
                        if (bmitxt! < 16)
                        { self.bmiMessageLbl.text = "Category: Severe Thinness"}
                        else if (bmitxt! >= 16 && bmitxt! < 17)
                                    
                        { self.bmiMessageLbl.text = "Category: Moderate Thinness"}
                        else if (bmitxt! >= 17 && bmitxt! < 18.5)
                                    
                        { self.bmiMessageLbl.text = "Category: Mild Thinness"}
                        else if (bmitxt! >= 18.5 && bmitxt! < 25)
                                    
                        { self.bmiMessageLbl.text = "Category: Normal"}
                        else if (bmitxt! >= 25 && bmitxt! < 30)
                                    
                        { self.bmiMessageLbl.text = "Category: Overweight"}
                        else if (bmitxt! >= 30 && bmitxt! < 35)
                                    
                        { self.bmiMessageLbl.text = "Category: Obese Class I"}
                        else if (bmitxt! >= 35 && bmitxt! <= 40)
                                    
                        { self.bmiMessageLbl.text = "Category: Obese Class II"}
                        else if (bmitxt! > 40)
                                    
                        { self.bmiMessageLbl.text = "Category: Obese Class III"}
                    }
                        
                    else
                    {
                        bmitxt = Float(weighttxt!/(heighttxt!*heighttxt!))
                        self.bmiResultLbl.text = String(format:"%.\(2)f", bmitxt!)
                        
                        if (bmitxt! < 16)
                        { self.bmiMessageLbl.text = "Category: Severe Thinness"}
                        
                        else if (bmitxt! >= 16 && bmitxt! < 17)
                        { self.bmiMessageLbl.text = "Category: Moderate Thinness"}
                        
                        else if (bmitxt! >= 17 && bmitxt! < 18.5)
                        { self.bmiMessageLbl.text = "Category: Mild Thinness"}
                        
                        else if (bmitxt! >= 18.5 && bmitxt! < 25)
                        { self.bmiMessageLbl.text = "Category: Normal"}
                        
                        else if (bmitxt! >= 25 && bmitxt! < 30)
                        { self.bmiMessageLbl.text = "Category: Overweight"}
                        
                        else if (bmitxt! >= 30 && bmitxt! < 35)
                        { self.bmiMessageLbl.text = "Category: Obese Class I"}
                        
                        else if (bmitxt! >= 35 && bmitxt! <= 40)
                        { self.bmiMessageLbl.text = "Category: Obese Class II"}
                        
                        else if (bmitxt! > 40)
                        { self.bmiMessageLbl.text = "Category: Obese Class III"}
                        
                    }
                    addRecord(weight: Float(weighttxt!) , bmi: Float(bmitxt!))
                }
    }
    
    
    @IBAction func trackButtonTap(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "BMITrackingViewController") as! BMITrackingViewController
        vc.weight = weightLbl.text
        vc.bmi = bmiResultLbl.text
        vc.name = nameLbl.text
        
        self.navigationController?.pushViewController(vc , animated: true)
    }
    
    
    func addRecord(weight :Float, bmi : Float){
            let newRecord = bmiRecords(context: context)
            
            newRecord.weight = weight
            newRecord.bmi = bmi
            
            do{
                try context.save()
                print("Save")
            }catch{
                
            }
        }
    

}


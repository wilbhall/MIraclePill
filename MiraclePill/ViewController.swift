//
//  ViewController.swift
//  MiraclePill
//
//  Created by Joseph Leichter on 11/23/16.
//  Copyright © 2016 Joseph Leichter. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    
    var buyNowClicked:Bool = false
   
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!

    @IBOutlet weak var stateLabel: UILabel!
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var zipcodeLabel: UILabel!
    @IBOutlet weak var countryTextBox: UITextField!
    @IBOutlet weak var zipTextBox: UITextField!
    
    
    @IBOutlet weak var miraclePillEmoji: UIImageView!
    @IBOutlet weak var miraclePillLabel: UILabel!
    
    @IBOutlet weak var moneyLabel: UILabel!
    
    
    @IBOutlet weak var divider: UIView!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var fullNameTextBox: UITextField!
    
    @IBOutlet weak var streetNameLabel: UILabel!
    @IBOutlet weak var streetNameAddressBox: UITextField!
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTextBox: UITextField!
    
    
    @IBOutlet weak var buyNowButton: UIButton!
    
    @IBAction func buyNowButtonPressed(_ sender: Any) {
        
        if !self.buyNowClicked{
            hideAll()
            self.buyNowClicked = true
        }else{
            showAll()
             self.buyNowClicked = false
        }
        
       
    }
    
    func hideAll(){
        
       statePicker.isHidden = true
       statePickerBtn.isHidden = true
      countryLabel.isHidden = true
        zipcodeLabel.isHidden = true
        countryTextBox.isHidden = true
         zipTextBox.isHidden = true
        miraclePillEmoji.isHidden = true
        miraclePillLabel.isHidden = true
        divider.isHidden = true
       fullNameLabel.isHidden = true
        fullNameTextBox.isHidden = true
        streetNameLabel.isHidden = true
       streetNameAddressBox.isHidden = true
         cityLabel.isHidden = true
       cityTextBox.isHidden = true
       // buyNowButton.isHidden = true
        stateLabel.isHidden = true
        moneyLabel.isHidden = true
    }
    
    
    func showAll(){
        
        statePicker.isHidden = true
        statePickerBtn.isHidden = false
        countryLabel.isHidden = false
        zipcodeLabel.isHidden = false
        countryTextBox.isHidden = false
        zipTextBox.isHidden = false
        miraclePillEmoji.isHidden = false
        miraclePillLabel.isHidden = false
        divider.isHidden = false
        fullNameLabel.isHidden = false
        fullNameTextBox.isHidden = false
        streetNameLabel.isHidden = false
        streetNameAddressBox.isHidden = false
        cityLabel.isHidden = false
        cityTextBox.isHidden = false
        // buyNowButton.isHidden = true
        stateLabel.isHidden = false
        moneyLabel.isHidden = false
    }
    
    
let states = ["Alabama",
     "Alaska",
     "Arizona",
     "Arkansas",
     "California",
     "Colorado",
     "Connecticut",
     "Delaware",
     "Florida",
     "Georgia",
     "Hawaii",
     "Idaho",
     "Illinois",
     "Indiana",
     "Iowa",
     "Kansas",
     "Kentucky",
     "Louisiana",
     "Maine",
     "Maryland",
     "Massachusetts",
     "Michigan",
     "Minnesota",
     "Mississippi",
     "Missouri",
     "Montana",
     "Nebraska",
     "Nevada",
     "New Hampshire",
     "New Jersey",
     "New Mexico",
     "New York",
     "North Carolina",
     "North Dakota",
     "Ohio",
     "Oklahoma",
     "Oregon",
     "Pennsylvania",
     "Rhode Island",
     "South Carolina",
     "South Dakota",
     "Tennessee",
     "Texas",
     "Utah",
     "Vermont",
     "Virginia",
     "Washington",
     "West Virginia",
     "Wisconsin",
     "Wyoming"]

 
 
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //picker code
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryTextBox.isHidden = false
        zipcodeLabel.isHidden = false
        zipTextBox.isHidden = false
    }
    
    
    
    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        
        countryLabel.isHidden = true
        countryTextBox.isHidden = true
        zipcodeLabel.isHidden = true
        zipTextBox.isHidden = true
    }
    
    
    
}


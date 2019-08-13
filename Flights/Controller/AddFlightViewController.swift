//
//  AddFlightViewController.swift
//  Flights
//
//  Created by Marcus Fuchs on 13.08.19.
//  Copyright © 2019 Marcus Fuchs. All rights reserved.
//

import UIKit
import RealmSwift


class AddFlightViewController: UIViewController {

    
    //MARK:________________GLOBAL VARIABLES________________

    
    let realm = try! Realm()
    
    
    @IBOutlet weak var departureAirportTextField: UITextField!
    @IBOutlet weak var destinationAirportTextField: UITextField!
    @IBOutlet weak var offblockTimeTextField: UITextField!
    @IBOutlet weak var onblockTimeTextField: UITextField!
    
    
    var depDatePicker: UIDatePicker?
    var arrDatePicker: UIDatePicker?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initailizeDatePickers()
    }
    

    


    
    
    
    
    //MARK:________________DATA MANIPULATION METHODS________________

    
    @IBAction func saveFlightTapped(_ sender: Any) {
        
        
//        let newFlight = Flight()
//
//        newFlight.departureAirport = departureTextfield.text
//        newFlight.arrivalAirport = destinationAirportTextField.text
//
        
        
        
        
        
    }
    
    
    
    
    
    
    
    //MARK:_____________________DATE PICKER CODE_____________________

    
    func initailizeDatePickers() {
    // www.youtube.com/watch?v=aa-lNWUVY7g&t=11s
        
        //set default entries in Textfield
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        dateFormatter.dateFormat = "dd/MM/yyyy  -  HH:mm"
        offblockTimeTextField.text = dateFormatter.string(from: currentDate) + " z"
        onblockTimeTextField.text = dateFormatter.string(from: currentDate) + " z"
        
        depDatePicker = UIDatePicker()
        depDatePicker?.datePickerMode = .dateAndTime
        depDatePicker?.timeZone = TimeZone(abbreviation: "UTC")
        depDatePicker?.addTarget(self, action: #selector(depDateChanged(datePicker:)), for: .valueChanged)
        
        arrDatePicker = UIDatePicker()
        arrDatePicker?.datePickerMode = .dateAndTime
        arrDatePicker?.timeZone = TimeZone(abbreviation: "UTC")
        arrDatePicker?.addTarget(self, action: #selector(arrDateChanged(datePicker:)), for: .valueChanged)
        
        
        offblockTimeTextField.inputView = depDatePicker
        onblockTimeTextField.inputView = arrDatePicker
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped(gestureRecognizer:)))
        view.addGestureRecognizer(tapGesture)
        
    }
    
    @objc func depDateChanged(datePicker: UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        dateFormatter.dateFormat = "dd/MM/yyyy  -  HH:mm"
        offblockTimeTextField.text = dateFormatter.string(from: datePicker.date) + " z"
    }
    
    
    @objc func arrDateChanged(datePicker: UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        dateFormatter.dateFormat = "dd/MM/yyyy  -  HH:mm"
        onblockTimeTextField.text = dateFormatter.string(from: datePicker.date) + " z"
    }
    
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        
        view.endEditing(true)
    }
    

    
    
    
    
    
}

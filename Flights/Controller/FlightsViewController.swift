//
//  FlightsViewController.swift
//  Flights
//
//  Created by Marcus Fuchs on 13.08.19.
//  Copyright © 2019 Marcus Fuchs. All rights reserved.
//

import UIKit
import RealmSwift


class FlightsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        flightsTableView.delegate = self
        flightsTableView.dataSource = self
        flightsTableView.register(UINib(nibName: "CustomFlightCell", bundle: nil), forCellReuseIdentifier: "FlightCell")
    }
    
    
    
    
    //MARK:___________________GLOBAL VARIABLES___________________

    let realm = try! Realm()

    var flights: Results<Flight>?
    
    @IBOutlet weak var flightsTableView: UITableView!
    
    
    


    
    //MARK:_______________TABLEVIEW DELEGATE METHODS_______________

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flights?.count ?? 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FlightCell", for: indexPath) as! CustomFlightCell
        
        if let allflight = flights?[indexPath.row] {
        
        cell.departureAirportLabel.text = allflight.departureAirport
        cell.arrivalAirportLabel.text = allflight.arrivalAirport
            
        let formatter = DateFormatter()
        cell.offblockLabel.text = formatter.string(from: allflight.offblock!)
        cell.onblockLabel.text = formatter.string(from: allflight.onblock!)
        } else {
            
            cell.departureAirportLabel.text = "No Flights Added"
            cell.arrivalAirportLabel.text = ""
            cell.offblockLabel.text = ""
            cell.onblockLabel.text = ""
        
        }

        flightsTableView.rowHeight = 130.0

        return cell
   
    }
    
    
    

    
    @IBAction func addFlightTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "addFlight", sender: self)
        
    }
    
    
    
    
    //MARK:________________DATA MANIPULATION METHODS________________

    //MARK:_______________________SEGUE METHOD_______________________

    

    
    

    
    
    
}

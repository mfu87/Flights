//
//  CustomFlightCellTableViewCell.swift
//  Flights
//
//  Created by Marcus Fuchs on 13.08.19.
//  Copyright © 2019 Marcus Fuchs. All rights reserved.
//

import UIKit

class CustomFlightCell: UITableViewCell {

    
    @IBOutlet weak var departureAirportLabel: UILabel!
    @IBOutlet weak var arrivalAirportLabel: UILabel!
    @IBOutlet weak var offblockLabel: UILabel!
    @IBOutlet weak var onblockLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}

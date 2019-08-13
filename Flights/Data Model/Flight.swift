//
//  Flight.swift
//  Flights
//
//  Created by Marcus Fuchs on 13.08.19.
//  Copyright © 2019 Marcus Fuchs. All rights reserved.
//

import Foundation
import RealmSwift

class Flight: Object {
    
    @objc dynamic var offblock: Date?
    @objc dynamic var onblock: Date?
    @objc dynamic var departureAirport: String = ""
    @objc dynamic var arrivalAirport: String = ""
   //ADD DURATION
}

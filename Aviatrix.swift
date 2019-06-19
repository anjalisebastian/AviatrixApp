//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    var running = false
    var data = AviatrixData()
    var location = "St. Louis"
    var distanceTraveled = 0.0
    var maxFuel = 5000.0
    var fuelLevel = 5000.0
    var milesPerGallon = 0.4
    var price = 0.0
    var fuelCost = 0.0
    var difference = 0.0
    
    var author = String()
    init(authorName : String) {
        author = authorName
    }
    
    func start() -> Bool {
        running = true
        return running
    }
    
    
    func refuel() -> Double {
        difference = maxFuel - fuelLevel
        fuelLevel = maxFuel
        price = data.fuelPrices[location]!
        fuelCost += price * difference
        return price * difference
    }
    
    func flyTo(destination : String) {
       
        distanceTraveled += Double(distanceTo(target : destination))   
        fuelLevel -= Double(distanceTo(target : destination)) / milesPerGallon
        location = destination
    }
    
    func distanceTo(target : String) -> Int {
        return data.knownDistances[location]![target]!
    
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis" , "Phoenix" , "Denver" , "SLC"]
    }
}

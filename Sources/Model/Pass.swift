//
//  Pass.swift
//  45bitstudios-web
//
//  Created by Vince Davis on 5/2/17.
//
//

import StORM
import PostgresStORM

class Pass: PostgresStORM {
    
    // Set some properties for the object
    // These properties are reflected in the database table
    // NOTE: First param in class should be the ID.
    var id				: Int = 0
    var version         : String = ""
    var deviceId		: String = ""
    var passId			: String = ""
    var serialNumber    : String = ""
    var token           : String = ""
    var lastUpdated     : String = ""
    
    // The name of the database table
    override open func table() -> String { return "passes" }
    
    // The mapping that translates the database info back to the object
    // This is where you would do any validation or transformation as needed
    override func to(_ this: StORMRow) {
        id				= this.data["id"] as? Int				?? 0
        version         = this.data["version"] as? String		?? ""
        deviceId		= this.data["deviceId"] as? String		?? ""
        passId			= this.data["passId"] as? String		?? ""
        serialNumber	= this.data["serialNumber"] as? String	?? ""
        token           = this.data["token"] as? String         ?? ""
        lastUpdated		= this.data["lastUpdated"] as? String	?? ""
    }
    
    // A simple iteration.
    // Unfortunately necessary due to Swift's introspection limitations
    func rows() -> [Pass] {
        var rows = [Pass]()
        for i in 0..<self.results.rows.count {
            let row = Pass()
            row.to(self.results.rows[i])
            rows.append(row)
        }
        return rows
    }
}

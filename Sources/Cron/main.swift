import Foundation
import SwiftCron
import Manager

// Welcome to Cron!
// If you add frequency: X to the intializer here, cron will attempt to run your jobs every X seconds
// If you do not add a frequency, it defaults to 60 (every minute)

let cron = Cron(frequency: 3)

//Define Functions to Run Here, Elsewhere in your project, or import your own frameworks
var i = 0
func test() {
//    let manager = Manager()
//    manager.test()
    i += 1
    print("ran \(i) times")
}

//Make jobs
let job = CronJob(test, executeAfter: Date(), allowsSimultaneous: true, repeats: true, repeatEvery: 3)

//Add jobs to queue
cron.add(job)

//Start Cron So the Jobs Run
cron.start()

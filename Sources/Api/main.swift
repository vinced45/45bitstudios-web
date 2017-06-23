import PerfectLib
import PerfectHTTP
import PerfectHTTPServer

// Create HTTP server.
let server = HTTPServer()

// Set a listen port of 8181
server.serverPort = 8181

do {
    // Launch the servers based on the configuration data.
    try server.start()
} catch {
    fatalError("\(error)") // fatal error launching one of the servers
}

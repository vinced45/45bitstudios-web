// Generated automatically by Perfect Assistant Application
// Date: 2017-06-23 20:08:38 +0000
import PackageDescription
let package = Package(
	name: "45bitstudios-web",
	targets: [
        Target(name: "Api",
               dependencies: [
                .Target(name: "Model"),
                .Target(name: "Manager")
            ]
        ),
        Target(name: "Cron",
               dependencies: [
                .Target(name: "Model"),
                .Target(name: "Manager")
            ]
        ),
        Target(name: "Manager",
               dependencies: [
                .Target(name: "Model"),
            ]
        ),
        Target(name: "Model",
               dependencies: []
        ),
        Target(name: "Sites",
               dependencies: [
                .Target(name: "Model"),
                .Target(name: "Manager")
            ]
        ),
    ],
	dependencies: [
		.Package(url: "https://github.com/PerfectlySoft/Perfect-HTTPServer.git", majorVersion: 2),
		.Package(url: "https://github.com/rymcol/SwiftCron.git", majorVersion: 0),
		.Package(url: "https://github.com/PerfectlySoft/Perfect-PostgreSQL.git", majorVersion: 2, minor: 0),
		.Package(url: "https://github.com/SwiftORM/Postgres-StORM.git", majorVersion: 1),
	]
)

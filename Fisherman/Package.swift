// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "fisherman",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/jpsim/Yams.git", from: "2.0.0"),
        .package(url: "https://github.com/jakeheis/SwiftCLI", from: "5.0.0")
    ],
    targets: [
        .target(
            name: "Fisherman",
            dependencies: [ "FishermanCore" ]),
        .target(
            name: "FishermanCore",
            dependencies: [ "Yams", "SwiftCLI" ]),
        .testTarget(
            name: "FishermanTests",
            dependencies: ["Fisherman"]),
    ]
)

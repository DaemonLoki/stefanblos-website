// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "StefanblosWebsite",
    products: [
        .executable(
            name: "StefanblosWebsite",
            targets: ["StefanblosWebsite"]
        )
    ],
    dependencies: [
        .package(path: "/Users/stefanblos/Code/Web-Projects/Publish")
    ],
    targets: [
        .target(
            name: "StefanblosWebsite",
            dependencies: ["Publish"]
        )
    ]
)

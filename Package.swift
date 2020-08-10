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
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.3.0"),
        .package(name: "SplashPublishPlugin", url: "https://github.com/johnsundell/splashpublishplugin", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "StefanblosWebsite",
            dependencies: ["Publish", "SplashPublishPlugin"]
        )
    ]
)

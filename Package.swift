// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "URLCompatibilityKit",
    platforms: [.iOS(.v11), .macOS(.v10_13), .tvOS(.v10), .watchOS(.v3)],
    products: [
        .library(
            name: "URLCompatibilityKit",
            targets: ["URLCompatibilityKit"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "URLCompatibilityKit",
            dependencies: []
        ),
        .testTarget(
            name: "URLCompatibilityKitTests",
            dependencies: ["URLCompatibilityKit"]
        ),
    ]
)

// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HailuoSecureTool",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "HailuoSecureTool",
            targets: ["HailuoSecureTool"]),
    ], dependencies: [
        .package(url: "https://github.com/AFNetworking/AFNetworking.git", from: "4.0.0"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.8.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "HailuoSecureTool",
            dependencies: [
                .product(name: "AFNetworking", package: "AFNetworking"),
                .product(name: "Alamofire", package: "Alamofire")
            ]),
        .testTarget(
            name: "HailuoSecureToolTests",
            dependencies: ["HailuoSecureTool"]
        ),
    ]
)

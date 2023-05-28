// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ChatGPTSwift",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ChatGPTSwift",
            targets: ["ChatGPTSwift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/alfianlosari/GPTEncoder.git", exact: "1.0.4")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ChatGPTSwift",
            dependencies: [
                .product(name: "GPTEncoder", package: "GPTEncoder")
            ]),
    ]
)

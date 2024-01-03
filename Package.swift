// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LibPolygonID",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LibPolygonID",
            targets: ["LibPolygonID"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "BabyJubjub",
            Path: "BabyJubjub.xcframework"),
        .binaryTarget(
            name: "LibPolygonID",
            url: "https://github.com/jrl351/polygonid-xcframework/releases/download/v0.0.1/libpolygonid.zip",
            checksum: "f33086d27177a85221d9c8f235bb0933000f9a53d4aba13cb16b8637daae696c"),
    ]
)

// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZippyJSON",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "ZippyJSON",
            targets: ["ZippyJSON"]),
    ],
    dependencies: [
        .package(url: "https://github.com/michaeleisel/JJLISO8601DateFormatter.git", from: "0.1.2"),
        .package(url: "https://github.com/michaeleisel/ZippyJSONCFamily.git", from: "0.0.2"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(name: "ZippyJSON", dependencies: ["ZippyJSONCFamily", "JJLISO8601DateFormatter"])
    ]
)

import PackageDescription

let package = Package(
    name: "APIManager", // Replace with your framework's name
    platforms: [
        .iOS(.v13), // Adjust platform and version as needed
        .macOS(.v10_15), // Add other platforms if your framework supports them
        .tvOS(.v13),
        .watchOS(.v6),
    ],
    products: [
        .library(
            name: "APIManager",
            targets: ["APIManager"]),
    ],
    dependencies: [
        // List your dependencies here, e.g.,
        // .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0"),
        // .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "6.0.0"),
    ],
    targets: [
        .target(
            name: "APIManager",
            dependencies: [
                // List your target dependencies here, e.g.,
                // "Alamofire",
                // "RxSwift",
            ],
            path: "APIManager/" // Or the directory containing your source files
        ),
        .testTarget(
            name: "APIManagerTests",
            dependencies: ["APIManager"],
            path: "APIManager/APIManagerTests" // Or the directory containing your test files
        ),
    ]
)
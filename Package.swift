// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "bingo",
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),

        // 🍃 An expressive, performant, and extensible templating language built for Swift.
        .package(url: "https://github.com/vapor/leaf.git", from: "3.0.0"),
        
        .package(url: "https://github.com/vapor/sqlite.git", from: "3.0.0"),
    ],
    targets: [
        .target(name: "App", dependencies: ["SQLite", "Leaf", "Vapor"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)


// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "WebSpecificLanguage",
    products: [
        .library(
            name: "WebSpecificLanguage",
            targets: ["WebSpecificLanguage"]),
    ],
    targets: [
        .target(
            name: "WebSpecificLanguage"),
        .testTarget(
            name: "WebSpecificLanguageTests",
            dependencies: ["WebSpecificLanguage"]
        ),
    ]
)

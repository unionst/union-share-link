// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "union-share-link",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "UnionShareLink",
            targets: ["UnionShareLink"]
        ),
    ],
    targets: [
        .target(
            name: "UnionShareLink"
        ),
    ]
)

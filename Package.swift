// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "swift-aoc-common",
  products: [
    .library(
      name: "Common",
      targets: ["Common"])
  ],
  dependencies: [
    // .package(url: "https://github.com/apple/swift-algorithms.git", from: "1.0.0"),
    // .package(url: "https://github.com/apple/swift-collections.git", from: "1.0.2"),
  ],
  targets: [
    .target(
      name: "Common"  // ,
        // dependencies: ["CoreLibraries"]
    ),
    // .target(
    //     name: "CoreLibraries", dependencies: [
    //         // .product(name: "Algorithms", package: "swift-algorithms"),
    //         // .product(name: "Collections", package: "swift-collections"),
    //     ]),
    .testTarget(
      name: "CommonTests",
      dependencies: ["Common"],
      exclude: ["support"]
    ),
  ]
)

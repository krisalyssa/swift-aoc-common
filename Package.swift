// swift-tools-version: 5.9

/******************************************************************************
 **
 ** Copyright (c) 2023 Craig S. Cottingham
 ** Licensed under the MIT License.
 **
 ** See https://github.com/CraigCottingham/swift-aoc-common/blob/main/LICENSE
 ** for license information.
 **
 **/

import PackageDescription

let package = Package(
  name: "swift-aoc-common",
  products: [
    .library(
      name: "Common",
      targets: ["Common", "Collections", "Extensions", "Geometry"])
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

    .target(name: "Collections"),
    .target(name: "Extensions"),
    .target(name: "Geometry"),

    // .target(
    //     name: "CoreLibraries", dependencies: [
    //         // .product(name: "Algorithms", package: "swift-algorithms"),
    //         // .product(name: "Collections", package: "swift-collections"),
    //     ]),

    .testTarget(
      name: "CommonTests",
      dependencies: ["Common"]
    ),

    .testTarget(
      name: "CollectionsTests",
      dependencies: ["Collections"]
    ),

    .testTarget(
      name: "ExtensionsTests",
      dependencies: ["Extensions"]
    ),

    .testTarget(
      name: "GeometryTests",
      dependencies: ["Geometry"]
    ),
  ]
)

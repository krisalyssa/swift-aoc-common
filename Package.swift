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
      name: "AoCCommon",
      targets: ["AoCCommon", "AoCCollections", "AoCExtensions", "AoCGeometry"])
  ],
  dependencies: [
    // .package(url: "https://github.com/apple/swift-algorithms.git", from: "1.0.0"),
    // .package(url: "https://github.com/apple/swift-collections.git", from: "1.0.2"),
  ],
  targets: [
    .target(
      name: "AoCCommon",
      path: "Sources/Common"  // ,
        // dependencies: ["CoreLibraries"]
    ),

    .target(name: "AoCCollections", path: "Sources/Collections"),
    .target(name: "AoCExtensions", path: "Sources/Extensions"),
    .target(name: "AoCGeometry", path: "Sources/Geometry"),

    // .target(
    //     name: "CoreLibraries", dependencies: [
    //         // .product(name: "Algorithms", package: "swift-algorithms"),
    //         // .product(name: "AoCCollections", package: "swift-collections"),
    //     ]),

    .testTarget(
      name: "CommonTests",
      dependencies: ["AoCCommon"]
    ),

    .testTarget(
      name: "CollectionsTests",
      dependencies: ["AoCCollections"]
    ),

    .testTarget(
      name: "ExtensionsTests",
      dependencies: ["AoCExtensions"]
    ),

    .testTarget(
      name: "GeometryTests",
      dependencies: ["AoCGeometry"]
    ),
  ]
)

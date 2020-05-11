// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "swift-composable-architecture",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  products: [
    .library(
      name: "ComposableArchitecture",
      type: .dynamic,
      targets: ["ComposableArchitecture"]
    ),
    .library(
      name: "ComposableArchitectureTestSupport",
      type: .dynamic,
      targets: ["ComposableArchitectureTestSupport"]
    ),
  ],
  dependencies: [
    .package(path: "./core/"),
    .package(path: "./test-support/")
  ],
  targets: [
    .target(
      name: "ComposableArchitecture",
      dependencies: [
        "Core"
      ]
    ),
//    .testTarget(
//      name: "ComposableArchitectureTests",
//      dependencies: [
//        "Core",
//        "TestSupport",
//      ]
//    ),
    .target(
      name: "ComposableArchitectureTestSupport",
      dependencies: [
        "TestSupport"
      ]
    ),
  ]
)

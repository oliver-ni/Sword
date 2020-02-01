// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "Sword",
  platforms: [
    .macOS(.v10_14)
  ],
  products: [
    .library(
      name: "Sword",
      targets: ["Sword"]
    ),
  ],
  dependencies: [
    .package(
      url: "https://github.com/vapor/websocket-kit.git",
      .branch("master")
    ),
    .package(
      url: "https://github.com/swift-server/async-http-client.git",
      .branch("master")
    )
  ],
  targets: [
    .target(
      name: "Sword",
      dependencies: [
        "WebSocketKit",
        "AsyncHTTPClient"
      ]
    ),
    .testTarget(
      name: "SwordTests",
      dependencies: ["Sword"]
    ),
  ],
  swiftLanguageVersions: [.v5]
)

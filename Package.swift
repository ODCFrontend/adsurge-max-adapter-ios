// swift-tools-version: 5.9
import PackageDescription

let package = Package(
  name: "AdSurgeADNAdapterForMAX",
  platforms: [
    .iOS(.v13)
  ],
  products: [
    .library(
      name: "AdSurgeADNAdapterForMAX",
      targets: ["AdSurgeADNAdapterForMAX"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/ODCFrontend/adsurge-adn-ios.git", exact: "2.0.1"),
    .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", "12.0.0"..<"99.0.0"),
  ],
  targets: [
    .target(
      name: "AdSurgeADNAdapterForMAX",
      dependencies: [
        .product(name: "AdSurgeSDK", package: "adsurge-adn-ios"),
        .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
      ],
      path: "AdSurgeADNAdapterForMAX",
      publicHeadersPath: "."
    )
  ]
)

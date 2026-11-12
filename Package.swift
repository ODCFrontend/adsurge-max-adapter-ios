// swift-tools-version: 5.9
import PackageDescription

let package = Package(
  name: "AdSurgeADNAdapterForMAX",
  platforms: [
    .iOS(.v12)
  ],
  products: [
    .library(
      name: "AdSurgeADNAdapterForMAX",
      targets: ["AdSurgeADNAdapterForMAXTarget"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/ODCFrontend/adsurge-adn-ios.git", exact: "2.0.2"),
    .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", "12.0.0"..<"99.0.0"),
  ],
  targets: [
    .target(
      name: "AdSurgeADNAdapterForMAXTarget",
      dependencies: [
        .target(name: "AdSurgeADNAdapterForMAX"),
        .product(name: "AdSurgeSDK", package: "adsurge-adn-ios"),
        .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
      ],
      path: "AdSurgeADNAdapterForMAXTarget"
    ),
    .binaryTarget(
      name: "AdSurgeADNAdapterForMAX",
      url:
        "https://github.com/ODCFrontend/adsurge-max-adapter-ios/releases/download/2.0.200/AdSurgeADNAdapterForMAX.zip",
      checksum: "908ef8e7eb59053dad669481658f5297b31eee316f9387ff87c7ca21583f71d1"
    ),
  ]
)

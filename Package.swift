import PackageDescription

let package = Package(
    name: "LINEBotAPI",
    dependencies: [
        .Package(url: "https://github.com/Zewo/JSON.git", majorVersion: 0, minor: 12),
        .Package(url: "https://github.com/ZewoGraveyard/Base64.git", majorVersion: 0, minor: 12),
    ],
    exclude: [ "EnvironmentTests" ]
)

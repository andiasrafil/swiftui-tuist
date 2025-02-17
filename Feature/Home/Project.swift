
import ProjectDescription

let project = Project(
    name: "Home",
    targets: [
        .target(
            name: "Home",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.myapp.Home",
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "Homepage", path: .relativeToCurrentFile("../Homepage")),
                .project(target: "Epaper", path: .relativeToCurrentFile("../Epaper")),
                .project(target: "Ebook", path: .relativeToCurrentFile("../Ebook")),
                .project(target: "Account", path: .relativeToCurrentFile("../Account")),
            ]),
        .target(
            name: "HomeTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.myapp.HomeTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "Home")
            ]),
    ]
)

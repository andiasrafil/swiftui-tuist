
import ProjectDescription

let project = Project(
    name: "Tetopi",
    targets: [
        .target(
            name: "Tetopi",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.myapp.Tetopi",
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                
            ]),
        .target(
            name: "TetopiTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.myapp.TetopiTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "Tetopi")
            ]),
    ]
)

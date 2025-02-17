
import ProjectDescription

let project = Project(
    name: "KidKit",
    targets: [
        .target(
            name: "KidKit",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.myapp.KidKit",
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                
            ]),
        .target(
            name: "KidKitTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.myapp.KidKitTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "KidKit")
            ]),
    ]
)

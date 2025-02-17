
import ProjectDescription

let project = Project(
    name: "Account",
    targets: [
        .target(
            name: "Account",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.myapp.Account",
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                
            ]),
        .target(
            name: "AccountTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.myapp.AccountTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "Account")
            ]),
    ]
)


import ProjectDescription

let project = Project(
    name: "Subscription",
    targets: [
        .target(
            name: "Subscription",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.myapp.Subscription",
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                
            ]),
        .target(
            name: "SubscriptionTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.myapp.SubscriptionTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "Subscription")
            ]),
    ]
)

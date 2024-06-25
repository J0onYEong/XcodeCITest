import ProjectDescription

let project = Project(
    name: "JuniosCITuist",
    targets: [
        .target(
            name: "JuniosCITuist",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.JuniosCITuist",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["JuniosCITuist/Sources/**"],
            resources: ["JuniosCITuist/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "JuniosCITuistTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.JuniosCITuistTests",
            infoPlist: .default,
            sources: ["JuniosCITuist/Tests/**"],
            resources: [],
            dependencies: [.target(name: "JuniosCITuist")]
        ),
    ]
)

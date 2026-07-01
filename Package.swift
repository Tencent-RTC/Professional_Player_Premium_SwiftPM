// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Version: 13.4.0.21062
// Summary: TXLiteAVSDK_Professional_Player_Premium
// Description: TXLiteAVSDK Professional Player Premium Edition provides powerful audio/video capabilities
// including video playback, real-time communication, and more.

import PackageDescription

let package = Package(
    name: "Professional_Player_Premium_SwiftPM",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "Professional_Player_Premium_SwiftPM",
            targets: ["Professional_Player_Premium_SwiftPM"]
        ),
        .library(
            name: "TXLiteAVSDK_ReplayKit",
            targets: ["TXLiteAVSDK_ReplayKit"]
        ),
    ],
    targets: [
        // ==================== Binary Targets ====================

        .binaryTarget(
            name: "TXLiteAVSDK_Professional",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.4/professional_player_premium/13.4.0.21062/TXLiteAVSDK_Professional.xcframework.zip",
            checksum: "19f7c457ec690cc82615e4d1c375587955269de3aa8d36155585c75aaf4f194a"
        ),
        .binaryTarget(
            name: "TXFFmpeg",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.4/professional_player_premium/13.4.0.21062/TXFFmpeg.xcframework.zip",
            checksum: "712dfa44ae377ab232dd688ea36a5c3ff86ff8bef4eec76c733fbd95b709f244"
        ),
        .binaryTarget(
            name: "TXSoundTouch",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.4/professional_player_premium/13.4.0.21062/TXSoundTouch.xcframework.zip",
            checksum: "705d191f53fa45bdadb20fd2f40c6b9069b51498f2edcd8781ea210188e23c7e"
        ),
        .binaryTarget(
            name: "TXLiteAVSDK_ReplayKitExt",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.4/professional_player_premium/13.4.0.21062/TXLiteAVSDK_ReplayKitExt.xcframework.zip",
            checksum: "d4a7e9aaf2faf53b03a2b0fe82b702729addb9b8c40294b65eb5b0a78b93b2f7"
        ),

        // ==================== Wrapper Targets ====================

        .target(
            name: "Professional_Player_Premium_SwiftPM",
            dependencies: [
                "TXLiteAVSDK_Professional",
                "TXFFmpeg",
                "TXSoundTouch"
            ],
            path: "Sources/PlayerWrapper",
            publicHeadersPath: "",
            linkerSettings: [
                .linkedFramework("ReplayKit"),
                .linkedFramework("VideoToolbox"),
                .linkedFramework("AVKit"),
                .linkedFramework("GLKit"),
                .linkedFramework("AssetsLibrary"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("OpenGLES"),
                .linkedFramework("Accelerate"),
                .linkedFramework("MetalKit"),
                .linkedFramework("MobileCoreServices"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("MetalPerformanceShaders"),
                .linkedLibrary("sqlite3.0"),
                .linkedLibrary("c++"),
                .linkedLibrary("resolv")
            ]
        ),
        .target(
            name: "TXLiteAVSDK_ReplayKit",
            dependencies: [
                "TXLiteAVSDK_ReplayKitExt"
            ],
            path: "Sources/ReplayKitWrapper",
            publicHeadersPath: "",
            sources: ["ReplayKitWrapper.m"]
        ),
    ]
)

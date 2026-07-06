// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Version: 13.4.0.21067
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
            url: "https://liteav.sdk.qcloud.com/download/spm/13.4/professional_player_premium/13.4.0.21067/TXLiteAVSDK_Professional.xcframework.zip",
            checksum: "2d2a8c83f7725b8fff5f99636e062366e7d08071acfcb16c960a060543218508"
        ),
        .binaryTarget(
            name: "TXFFmpeg",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.4/professional_player_premium/13.4.0.21067/TXFFmpeg.xcframework.zip",
            checksum: "4763cc9e5a920193d2599c1b07d1b859438c6049e3bf965cd9aa392a223e7eee"
        ),
        .binaryTarget(
            name: "TXSoundTouch",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.4/professional_player_premium/13.4.0.21067/TXSoundTouch.xcframework.zip",
            checksum: "c5c52140e2ef558c8668526c844443bdf79f519c18bf9edce4418f2fb578b495"
        ),
        .binaryTarget(
            name: "TXLiteAVSDK_ReplayKitExt",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.4/professional_player_premium/13.4.0.21067/TXLiteAVSDK_ReplayKitExt.xcframework.zip",
            checksum: "1e4ff9c241205a5dfd3f79c686f19ac4e5dc53b3ae795f5f903db2e5058508b3"
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

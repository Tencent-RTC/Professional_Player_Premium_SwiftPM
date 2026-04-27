// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Version: 13.3.20845
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
            url: "https://liteav.sdk.qcloud.com/download/spm/13.3/professional_player_premium/13.3.0.20845/TXLiteAVSDK_Professional.xcframework.zip",
            checksum: "5d3b36cf9fa190bfadc9b7cc14783eba73ad5a0323ccee16f3219798116034cb"
        ),
        .binaryTarget(
            name: "TXFFmpeg",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.3/professional_player_premium/13.3.0.20845/TXFFmpeg.xcframework.zip",
            checksum: "3297dcb3e9cc471c7a2fdfcab1b53b8c15530d64a8c9a3a2469648cde8538ff5"
        ),
        .binaryTarget(
            name: "TXSoundTouch",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.3/professional_player_premium/13.3.0.20845/TXSoundTouch.xcframework.zip",
            checksum: "e57672935b385434cad89886574441023ef8ea20e92231f70f6cec3ef865faac"
        ),
        .binaryTarget(
            name: "TXLiteAVSDK_ReplayKitExt",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.3/professional_player_premium/13.3.0.20845/TXLiteAVSDK_ReplayKitExt.xcframework.zip",
            checksum: "435dcf63006750bcb229da74181c8e1a6a6e7696cc057a3d9cd85a466eb2d343"
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
            sources: ["ReplayKitWrapper.m"]
        ),
    ]
)

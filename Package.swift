// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Version: 13.6.0.21648
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
            url: "https://liteav.sdk.qcloud.com/download/spm/13.6/professional_player_premium/13.6.0.21648/TXLiteAVSDK_Professional.xcframework.zip",
            checksum: "500f86fc14b2304834a636d5c1ca9cb678ce6bafce5aeb07d554752bb56db54b"
        ),
        .binaryTarget(
            name: "TXFFmpeg",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.6/professional_player_premium/13.6.0.21648/TXFFmpeg.xcframework.zip",
            checksum: "7bb1cd3ce67c52176ee0c829ca36668d1067299b91568800dff5caa2c592735e"
        ),
        .binaryTarget(
            name: "TXSoundTouch",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.6/professional_player_premium/13.6.0.21648/TXSoundTouch.xcframework.zip",
            checksum: "e498eb6b655bb4a42824b97be2d727581ae6652261b72495ba3d8a051fe0bea2"
        ),
        .binaryTarget(
            name: "TXLiteAVSDK_ReplayKitExt",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.6/professional_player_premium/13.6.0.21648/TXLiteAVSDK_ReplayKitExt.xcframework.zip",
            checksum: "b73c06bef69ddee8d3ff56cdc80feedafcd7a5fccc34281b9205545685442c2f"
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

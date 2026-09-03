// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Version: 13.5.0.21355
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
            url: "https://liteav.sdk.qcloud.com/download/spm/13.5/professional_player_premium/13.5.0.21355/TXLiteAVSDK_Professional.xcframework.zip",
            checksum: "0d4e0f7e302c20e40e170a46ee34e1dce918173ae15e294416e843b9f7fc2c16"
        ),
        .binaryTarget(
            name: "TXFFmpeg",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.5/professional_player_premium/13.5.0.21355/TXFFmpeg.xcframework.zip",
            checksum: "ae240398eac40c621ee5112039dcd3faa3de0116cfd892e68a4c49221da02242"
        ),
        .binaryTarget(
            name: "TXSoundTouch",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.5/professional_player_premium/13.5.0.21355/TXSoundTouch.xcframework.zip",
            checksum: "7ed55682193aa4eacd2fe40967c96761cab94dfc9556ac31b7431ac9e0b0bbba"
        ),
        .binaryTarget(
            name: "TXLiteAVSDK_ReplayKitExt",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.5/professional_player_premium/13.5.0.21355/TXLiteAVSDK_ReplayKitExt.xcframework.zip",
            checksum: "fa5c111bbc7c990a54848f1c5e721b474d84b2dfdc63a603d4a0feae71ffafc1"
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

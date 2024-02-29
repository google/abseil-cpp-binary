// swift-tools-version:5.6

// Copyright 2023 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import PackageDescription

let package = Package(
  name: "abseil",
  products: [
    .library(name: "abseil", targets: ["absl-Wrapper"])
  ],
  targets: [
    .target(
        name: "absl-Wrapper",
        dependencies: ["absl"],
        path: "absl-Wrapper",
        resources: [.process("Resources/PrivacyInfo.xcprivacy")]
    ),
    .binaryTarget(
      name: "absl",
      url: "https://dl.google.com/firebase/ios/bin/abseil/1.2022062300.1/absl.zip",
      checksum: "7dfcd4d9597feb6602939c9fa6bbedcf1304015ae4ff9d2ee2e40dd4f75cbb72"
    )
  ]
)

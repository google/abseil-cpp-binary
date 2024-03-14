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
    .library(name: "abseil", targets: ["abslWrapper"])
  ],
  targets: [
    .target(
        name: "abslWrapper",
        dependencies: ["absl"],
        path: "absl-Wrapper",
        resources: [.process("Resources/PrivacyInfo.xcprivacy")]
    ),
    .binaryTarget(
      name: "absl",
      url: "https://dl.google.com/firebase/ios/bin/abseil/1.2024011601.0/rc1/absl.zip",
      checksum: "8b57f02f82c8621a03e85718352b1aca344e26df7e092e8c39750cbf3e2bb95f"
    )
  ]
)

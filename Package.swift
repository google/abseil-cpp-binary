// swift-tools-version:5.3

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
    .library(name: "abseil", targets: ["abseil"])
  ],
  targets: [
    .binaryTarget(
      name: "abseil",
      // TODO(ncooke3): Temporarily hosting on GitHub while wiring everything
      // up. Set up hosting elsewhere and point to resulting URL.
      url: "https://dl.google.com/firebase/ios/bin/abseil/1.2021110200.0/abseil.zip",
      // TODO(ncooke3): Update the `checksum` when updating above URL.
      checksum: "bba6a353ff3f6f70264b507b05a2d65de09f624da80d437b76ff37115bfc0bba"
    )
  ]
)

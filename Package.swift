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
    .library(name: "abseil", targets: ["abseil"])
  ],
  targets: [
    .binaryTarget(
      name: "abseil",
      url: "https://dl.google.com/firebase/ios/bin/abseil/1.2022062300.0/abseil.zip",
      checksum: "15d896b7fd5dea5982594327bd2759a6ef6863a14d6aa6ffb72957f4064569ba"
    )
  ]
)

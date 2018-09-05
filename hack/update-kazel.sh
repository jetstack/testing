#!/bin/bash

# Copyright 2018 The Jetstack contributors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This script should only be executed via bazel, with 'bazel test //hack:update-kazel'

set -o errexit
set -o nounset
set -o pipefail

runfiles="$(pwd)"
cd "${BUILD_WORKSPACE_DIRECTORY}"
"${runfiles}"/hack/kazel "$@"
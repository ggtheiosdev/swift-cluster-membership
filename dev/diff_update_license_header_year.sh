#!/bin/bash
##===----------------------------------------------------------------------===##
##
## This source file is part of the Swift Cluster Membership open source project
##
## Copyright (c) 2018-2019 Apple Inc. and the Swift Cluster Membership project authors
## Licensed under Apache License v2.0
##
## See LICENSE.txt for license information
## See CONTRIBUTORS.md for the list of Swift Cluster Membership project authors
##
## SPDX-License-Identifier: Apache-2.0
##
##===----------------------------------------------------------------------===##

set -e

# Diffs with master and updates any files that differ from it.
# Useful to keep copyright years up to date.

diff master --name-only | while IFS= read file; do
  echo "Update copyright year in: ${file}"
  sed -i .bak 's/2018 Apple Inc./2019 Apple Inc./g' ${file};
  rm "${file}.bak"
done

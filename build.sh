#!/bin/bash
set -e

FRAMEWORK_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ROOT_DIR="$(dirname "$(dirname $FRAMEWORK_DIR)")"
export TOOLS_DIR=${ROOT_DIR}/tools
BUILD_DIR=$FRAMEWORK_DIR/build/distributions
${ROOT_DIR}/tools/build_package.sh cockroachdb $FRAMEWORK_DIR -a "$BUILD_DIR/executor.zip" -a "$BUILD_DIR/cockroachdb-scheduler.zip" $@

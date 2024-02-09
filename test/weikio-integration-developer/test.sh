#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
check "camel-version" camel --version
check "jbang-version" jbang --version
check "rclone-version" rclone --version
check "nats-version" nats --version

# Report result
reportResults
#!/bin/bash
cd "$(dirname "$0")"
source test-utils.sh

# Template specific tests
check "weikio-version" weikio version
check "platform-status" weikio-dev status
check "signed-in" weikio whoami
check "agent-online" bash -c "weikio get agents --env devtest | grep -E '^dev .*online'"
check "smoke-test" bash /usr/local/share/weikio-dev/smoke.sh "$PWD"

# Report result
reportResults

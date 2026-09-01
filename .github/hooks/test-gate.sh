#!/usr/bin/env bash
# Workspace Stop hook helper: enforces passing tests for every agent.
# Reads JSON input from stdin; outputs JSON to stdout.

set -euo pipefail

HOOK_INPUT=$(cat)

# Prevent infinite loops: if the agent is already retrying from a previous stop hook, let it stop.
STOP_HOOK_ACTIVE=$(echo "$HOOK_INPUT" | node -e "let input=''; process.stdin.on('data', chunk => input += chunk); process.stdin.on('end', () => console.log(JSON.parse(input).stop_hook_active === true ? 'True' : 'False'))" 2>/dev/null || echo "False")
if [ "$STOP_HOOK_ACTIVE" = "True" ]; then
  echo '{"hookSpecificOutput":{"hookEventName":"Stop"}}'
  exit 0
fi

# Run the test suite (redirect all output to stderr so stdout stays clean for JSON)
if npm test >/dev/null 2>&1; then
  # Tests passed — allow the agent to stop
  echo '{"hookSpecificOutput":{"hookEventName":"Stop"}}'
  exit 0
else
  # Tests failed — block the agent from stopping
  echo '{"hookSpecificOutput":{"hookEventName":"Stop","decision":"block","reason":"Tests are failing. Fix the implementation until all tests pass before finishing."}}'
  exit 0
fi

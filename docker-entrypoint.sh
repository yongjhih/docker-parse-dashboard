#!/usr/bin/env bash

export PARSE_SERVER_URL=${PARSE_SERVER_URL:-https://api.parse.com/1}
export PARSE_APP_ID=${PARSE_APP_ID:-}
export PARSE_MASTER_KEY=${PARSE_MASTER_KEY:-}
export PARSE_JS_KEY=${PARSE_JS_KEY:-myJavascriptKey}
export PARSE_REST_KEY=${PARSE_REST_KEY:-myRestKey}
export PARSE_APP_NAME=${PARSE_APP_NAME:-My Parse.Com App}
export SERVER_URL=${SERVER_URL:-http://localhost:1337/parse}
export APP_ID=${APP_ID:-}
export MASTER_KEY=${MASTER_KEY:-}
export APP_NAME=${APP_NAME:-My Parse Server App}
envsubst < "${PARSE_HOME}/Parse-Dashboard/parse-dashboard-config.json.example" > "${PARSE_HOME}/Parse-Dashboard/parse-dashboard-config.json"

exec "$@"

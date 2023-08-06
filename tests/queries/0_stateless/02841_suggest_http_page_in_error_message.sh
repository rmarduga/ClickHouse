#!/usr/bin/env bash

CURDIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
. "$CURDIR"/../shell_config.sh

export CLICKHOUSE_URL="${CLICKHOUSE_PORT_HTTP_PROTO}://${CLICKHOUSE_HOST}:${CLICKHOUSE_PORT_HTTP}/"

set -x

${CLICKHOUSE_CURL} -sS "${CLICKHOUSE_URL}sashboards"
${CLICKHOUSE_CURL} -sS "${CLICKHOUSE_URL}sashboard"
${CLICKHOUSE_CURL} -sS "${CLICKHOUSE_URL}sashboarb"
${CLICKHOUSE_CURL} -sS "${CLICKHOUSE_URL}sashboaxb"

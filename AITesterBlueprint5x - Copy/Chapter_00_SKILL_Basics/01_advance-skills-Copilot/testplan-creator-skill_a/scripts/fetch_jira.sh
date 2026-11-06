#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  printf 'Usage: %s <ISSUE-KEY>\n' "$0" >&2
  exit 2
fi

issue_key="$1"
base_url="${JIRA_BASE_URL:?Set JIRA_BASE_URL}"
email="${JIRA_EMAIL:?Set JIRA_EMAIL}"
token="${JIRA_TOKEN:?Set JIRA_TOKEN}"
base_url="${base_url%/}"

command -v curl >/dev/null 2>&1 || { printf 'curl is required\n' >&2; exit 127; }
command -v jq >/dev/null 2>&1 || { printf 'jq is required\n' >&2; exit 127; }

curl --fail --silent --show-error \
  --user "${email}:${token}" \
  --header 'Accept: application/json' \
  "${base_url}/rest/api/3/issue/${issue_key}?fields=summary,description,issuetype,priority,components,labels,fixVersions,issuelinks,attachment" \
| jq '{
    key: .key,
    summary: .fields.summary,
    type: .fields.issuetype.name,
    priority: .fields.priority.name,
    components: [.fields.components[]?.name],
    labels: .fields.labels,
    fixVersions: [.fields.fixVersions[]?.name],
    description: .fields.description,
    links: [.fields.issuelinks[]? | {type: .type.name, key: (.outwardIssue.key // .inwardIssue.key)}],
    attachments: [.fields.attachment[]? | .filename]
  }'

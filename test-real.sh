jira list --limit 7 --template=json --query 'assignee in (currentUser()) and status != "won'"'"'t fix" order by status asc, updated desc' | jq -f filter.jq

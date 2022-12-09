
# Download a sample response to use for future runs so testing is fast
if [ ! -f sample.json ]
then
  jira list --limit 7 --template=json --query 'assignee in (currentUser()) and status != "won'"'"'t fix" order by status asc, updated desc' > sample.json
fi

cat sample.json | jq -f filter.jq

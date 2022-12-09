{
  "items": .issues | map([
    {
      "title": "Copy \(.key): \(.fields.summary)",
      "substring":"\(.fields.status.name)",
      "icon": {"path": "~/dev/alfred-jira/icons/\(.fields.issuetype.name | ascii_downcase).svg"},
      "variables": {"action": "copy", "text": .key}
    },
    {
      "title": "Open \(.key): \(.fields.summary)",
      "substring":"\(.fields.status.name)",
      "icon": {"path": "~/dev/alfred-jira/icons/\(.fields.issuetype.name | ascii_downcase).svg"},
      "variables": {"action": "open", "url": "https://shiftcars.atlassian.net/browse/\(.key)"}
    }
  ]) | flatten
}

---
description: Create today's note with tasks from Linear and GitHub
agent: build
---
Create or update ~/garden/$(date +%Y-%m-%d).md with the following structure:

# $(date +%Y-%m-%d)

## Todos from Linear (Current Cycle ONLY)
Use the Linear MCP tool to:
1. Call linear_list_cycles with type: "current" to get the current cycle ID
2. Call linear_list_issues with cycle: "<current-cycle-id>" and assignee: "me"
3. Filter out issues in state Done or Released

ONLY include issues that belong to this exact current cycle. Do NOT include backlog issues or issues in future cycles.

## GitHub PRs - Needs Review
!`gh pr list --review-requested me --state open --limit 20 --json title,number,state,repository 2>/dev/null || echo "No PRs awaiting review"`

## GitHub PRs - Authored
!`gh pr list --author me --state open --limit 20 --json title,number,state,repository 2>/dev/null || echo "No open PRs"`

## Todos from Previous Days
Find the most recent daily notes (last 3 days) in ~/garden/ and extract any incomplete todos (- [ ] items). Add them under a "Carried Over" section.

## Notes

Use the format:
- [ ] Task description

Combine all sources into a unified todo list. Format for Obsidian.

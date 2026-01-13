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

## Carried Over

Find the most recent daily notes (last 3 days) in ~/garden/ and extract any incomplete todos. List them as references with Obsidian wiki-links to the original day (e.g. "See [[2026-01-12]] - task description"). Do NOT duplicate items that already appear in Linear or GitHub sections above.

Use the format:

- [ ] Task description https://link #tag

Add tags for searchability:

- Linear issues: #linear/ENG-XXXX
- GitHub PRs: #github/pr/XXXX
- PRs needing review: #review
- Authored PRs: #authored

Combine all sources into a unified todo list. Format for Obsidian.

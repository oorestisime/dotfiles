---
description: Mark a todo as done by matching text
agent: build
---
Mark a todo as done in ~/garden/$(date +%Y-%m-%d).md.

The user provides $ARGUMENTS as a search term (partial text match).

1. Read the daily note
2. Find all incomplete todos (`- [ ]`)
3. Match $ARGUMENTS against todo text (case-insensitive, partial match)
4. If exactly one match: mark it done (`- [x]`)
5. If multiple matches: show them and ask which one
6. If no matches: show all pending todos and ask to clarify

Examples:
- `/markdone PR` matches "Review PR #8931"
- `/markdone linear` matches "Fix Linear sync issue"
- `/markdone 7807` matches "ENG-7807: Resync all high school data"

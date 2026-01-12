---
description: Log a decision in today's daily note
agent: build
---
Log a decision in ~/garden/$(date +%Y-%m-%d).md.

The user will provide $ARGUMENTS describing the decision. If no arguments provided, ask what decision they want to log.

Add a "## Decisions" section if it doesn't exist (place it before ## Notes).

Format each decision as:

> [!info] Decision
> **$ARGUMENTS**
> - **Context:** (ask user or infer from conversation)
> - **Alternatives considered:** (if known)
> - **Rationale:** (why this choice)

#decision

Use nested tags when appropriate:
- #decision/architecture for system design choices
- #decision/process for workflow/process decisions  
- #decision/tooling for tool choices
- #decision/api for API design decisions

Keep it concise. The tag makes it searchable in Obsidian's tag pane and graph view.

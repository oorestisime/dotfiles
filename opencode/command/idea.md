---
description: Log an idea in today's daily note
agent: build
---
Log an idea in ~/garden/$(date +%Y-%m-%d).md.

The user will provide $ARGUMENTS describing the idea. If no arguments provided, ask what idea they want to capture.

Add a "## Ideas" section if it doesn't exist (place it before ## Notes).

Format each idea as:

> [!tip] Idea
> **$ARGUMENTS**
> (add any relevant context or notes)

#idea

Use nested tags when appropriate:
- #idea/feature for product/feature ideas
- #idea/improvement for enhancements to existing things
- #idea/experiment for things to try/test
- #idea/project for potential new projects

Keep it brief - just enough to remember later. The tag makes it searchable in Obsidian's tag pane and graph view.

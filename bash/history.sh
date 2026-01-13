# Real-time history sharing across terminals
# Append to existing PROMPT_COMMAND (preserves starship, zoxide, etc.)
PROMPT_COMMAND="${PROMPT_COMMAND}; history -a; history -n"

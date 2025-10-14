#!/bin/bash
# build_presentation.sh - Generate conference presentation from paper PDF

if [ -z "$1" ]; then
  echo "Usage: $0 <paper.pdf>"
  exit 1
fi

PAPER="$1"
OUTPUT="${PAPER%.pdf}_presentation.md"

echo "Generating presentation from $PAPER..."

llm -f "pdf:$PAPER" "Create a complete 15-minute conference presentation from this paper.

Structure:
1. SLIDE OUTLINE - Create 8-10 slides: title, motivation, methodology (2-3 slides), results (2-3 slides), conclusion
   Format each as: ## Slide N: Title, then 3-5 bullet points

2. SPEAKER NOTES - After each slide outline, add a 'Speaker notes:' section with 2-3 conversational sentences

3. KEY FIGURES - At the end, list 3-5 critical figures/tables to include, noting which slide each belongs to

Use clear markdown formatting with ## for slides and --- separators between sections." > "$OUTPUT"

echo "Done! Presentation saved to: $OUTPUT"

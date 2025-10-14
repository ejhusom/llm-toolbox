# LLM toolbox


## Reusable templates

```bash
# Finding synonyms
llm "Give me ten synonyms for this word/term: " --save synonym

# Summarizing text
llm "Summarize the following: " --save summarize

# Research idea validator
llm -s "You are a skeptical senior researcher who has seen many ideas fail" "Research idea $input. Play devil's advocate. What are: 1) Fatal flaws in this approach? 2) Assumptions that might not hold? 3) Better alternatives? Be brutally honest" --save devils-advocate
```


## Scripts

- [Presentation builder](presentation_builder.sh)

## Shortcuts

Generate a commit message based on staged changes, and open it in the commit editor:

```bash
git commit -m "$(git diff --staged | llm "Write a conventional commit message (type: description). Be specific about what changed and why.")" -e
```


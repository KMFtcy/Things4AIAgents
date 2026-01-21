# Things4AIAgents
This is a repo of prompt-related things for my AI agents to work better.

## Why is this repo called this name?

As of 2026, AI agents are moving faster because many new tools and techniques are expanding their capabilities. These methods—often called rules, context, agents, or skills—share one core goal: better prompting. In this repo, "Things" is a general name for all these approaches. The term is broad on purpose because the ecosystem is still changing; even though "skills" are popular now, no single approach has won. Since prompts are verbal and easy to carry across frameworks, the general label fits both current practice and ongoing evolution.

## Skills

This repository contains reusable skills for AI agents. You can install them to your local Claude Code configuration.

### Installation

To install skills from this repository to your local Claude Code configuration, run this one-liner:

```bash
curl -sSL https://raw.githubusercontent.com/kmftcy/Things4AIAgents/main/install-skills.sh | bash
```

This will automatically clone the repository and copy all skills to your `~/.claude/skills/` directory.

### Available Skills

- **git-commit**: Creates commits following Conventional Commits v1.0.0 specification

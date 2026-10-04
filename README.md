<picture>
  <source media="(prefers-color-scheme: dark)" srcset="hero.svg">
  <img alt="Umut Can — nixaut-codelabs — Systems, Runtimes, ML Infrastructure" src="hero.svg">
</picture>

# Umut Can — nixaut-codelabs

I build the layer between machine-learning models and hardware they never talk to directly: GPU bridges with no native bindings, neuroevolution engines on flat typed arrays and Rust-WASM kernels, semantic search over codebases, orchestration runtimes for LLM agents.

The common thread: **make the slow thing fast and the fragile thing crash-safe — then prove it with tests, not adjectives.**

## Shipped

| Project | What it does | npm |
|---|---|---|
| [**teachable-machine.js**](https://github.com/nixaut-codelabs/teachable-machine.js) | Teachable Machine inference on Node.js — batched, RAM-first with disk fallback, image + video through one API | `2.0.2` · ~95 dl/mo |
| [**tfjs-turbo**](https://github.com/nixaut-codelabs/tfjs-turbo) | TensorFlow.js on Node & Bun via WebGPU / WebGL / WASM — the native-free alternative to tfjs-node, with crash-safe checkpoint & resume | `2.0.0` · ~43 dl/mo |
| [**general.ai**](https://github.com/nixaut-codelabs/general.ai) | OpenAI-compatible orchestration runtime — tools, subagents, retries, provider key rotation, context management | `1.0.0` · ~22 dl/mo |
| [**bunaptic**](https://github.com/nixaut-codelabs/bunaptic) | Bun-first neural network & neuroevolution engine — typed arrays, Workers, Rust-WASM kernels, Node fallback | `0.1.0-alpha.1` · ~19 dl/mo |
| [**opencode-beacon**](https://github.com/nixaut-codelabs/opencode-beacon) | Semantic code search plugin for OpenCode — hybrid vector + BM25 search, dependency graph, change-impact analysis | `1.3.3` |

## How I work

- **Bun-first.** TypeScript strict, tests colocated with source, `bun test` as the merge gate.
- **Honest status labels.** Alpha means alpha — the README states what is *not* supported yet, on purpose.
- **Tests are the spec.** Crash-resume, backend fallback and folding correctness are proven by suites, never claimed in prose.

## Contact

- Email — codelabsnixaut@gmail.com
- GitHub — [@nixaut-codelabs](https://github.com/nixaut-codelabs)

<sub>npm versions and last-month download counts checked 2026-10-04. They will drift; publishing them anyway is the point.</sub>

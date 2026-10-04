# Changelog

## [2026-10-04] - Traction measurement loop

### Added
- `scripts/npm-metrics.sh` — appends a dated row of last-month npm downloads per package + total stars to the metrics table; idempotent per day
- `metrics/npm-downloads.md` — baseline row 2026-10-04 (43/95/19/22/51 dl, 8 stars); monthly cron appends

## [2026-10-04] - Animated SVG layer + richer Markdown

### Added
- `terminal.svg` — typing terminal (`bun test` / `bun run bench` / `git push`), clip-path type-on + blinking cursors; no fabricated pass counts
- `stack-rail.svg` — toolchain rail with flowing dash and staggered node pulses

### Modified
- `hero.svg` — rev 2: self-drawing waveform (`pathLength` dash trick), scanline sweep, blinking cursor block, breathing glow, peak pips; all animations honor `prefers-reduced-motion` and degrade to the finished state without CSS
- `README.md` — terminal + stack-rail embedded via `<picture>`, ASCII trajectory replaced with mermaid `timeline`, bunaptic bench methodology exposed in a `<details>` panel (warmup 2 · repeats 7 · median/p95, straight from `bench/harness.ts`)

## [2026-10-04] - Profile datasheet redesign

### Added
- `hero.svg` — hand-drawn SVG hero: dark instrument panel, telemetry waveform, monospace identity; embedded via `<picture>` so it survives GitHub's Markdown sanitizer

### Modified
- `README.md` — replaced centered emoji template (👋 header, readme-stats cards, badge wall) with datasheet layout: identity block, "Shipped" table carrying npm-verified versions and last-month downloads, "Case notes" (per-project problem → approach → proof, incl. real tfjs-turbo snippet), "Trajectory" timeline, "How I work", contact

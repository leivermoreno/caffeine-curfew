# Caffeine Curfew

Single-page tool served by GitHub Pages from `main` at https://leivermoreno.github.io/caffeine-curfew/

- Edit `src/page.html` (page body, no doctype/head; it is also the claude.ai artifact source).
- Then run `./build.sh src/page.html index.html` and commit both files. Never hand-edit `index.html`.
- After every change, push to `main` so the live page updates (Pages redeploys in about a minute).
- Settings and drinks are saved in the browser's localStorage under key `caffeine-curfew-v1`; keep that key and stay backward compatible with saved state.

#!/bin/sh
# Wraps the artifact page in a full HTML document for GitHub Pages.
SRC="$1"; OUT="$2"
{
cat <<'HEAD'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<meta name="theme-color" content="#140E0A">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="apple-mobile-web-app-title" content="Caffeine">
<link rel="icon" href="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 32 32'%3E%3Crect width='32' height='32' rx='7' fill='%23140E0A'/%3E%3Cg transform='rotate(-28 16 16)'%3E%3Cellipse cx='16' cy='16' rx='8' ry='11' fill='%23B5763F'/%3E%3Cpath d='M16 6 C20 11 12 21 16 26' stroke='%23140E0A' stroke-width='2' fill='none' stroke-linecap='round'/%3E%3C/g%3E%3C/svg%3E">
<style>
:root { padding-top: env(safe-area-inset-top, 0px); padding-bottom: env(safe-area-inset-bottom, 0px); }
body { margin: 0; }
img { max-width: 100%; }
[hidden] { display: none !important; }
</style>
HEAD
cat "$SRC"
printf '\n</html>\n'
} > "$OUT"

#!/usr/bin/env python3

import re
import shutil
import sys
from pathlib import Path

root = Path(sys.argv[1] if len(sys.argv) > 1 else ".")

affected = []

for path in root.rglob("*.svg"):
    content = path.read_text(encoding="utf-8")

    if re.search(r"</?svg:", content):
        affected.append((path, content))

if not affected:
    print("No namespace-prefixed SVG files found.")
    raise SystemExit(0)

# Refuse to overwrite backups from an earlier run.
existing_backups = [
    path.with_name(path.name + ".bak")
    for path, _ in affected
    if path.with_name(path.name + ".bak").exists()
]

if existing_backups:
    print("Existing backups found; no files changed:", file=sys.stderr)
    for backup in existing_backups:
        print(f"  {backup}", file=sys.stderr)
    raise SystemExit(1)

for path, old in affected:
    new = old

    # <svg:svg>, <svg:path>, </svg:g>, etc.
    new = re.sub(r"(<\/?)svg:", r"\1", new)

    # Replace the prefixed SVG namespace with the default namespace.
    new = new.replace(
        'xmlns:svg="http://www.w3.org/2000/svg"',
        'xmlns="http://www.w3.org/2000/svg"',
    )

    # SVG 2 form of references.
    new = new.replace("xlink:href=", "href=")
    new = re.sub(
        r'\s+xmlns:xlink="http://www\.w3\.org/1999/xlink"',
        "",
        new,
    )

    # Remove the browser-extension artefacts found in these files.
    new = re.sub(
        r'<div\b[^>]*\bid=["\']divScriptsUsed["\'][^>]*/>',
        "",
        new,
        flags=re.IGNORECASE | re.DOTALL,
    )
    new = re.sub(
        r'<script\b[^>]*\bid=["\']globalVarsDetection["\'][^>]*/>',
        "",
        new,
        flags=re.IGNORECASE | re.DOTALL,
    )

    if re.search(r"</?svg:", new):
        raise RuntimeError(f"Namespace prefix remains in {path}")

    backup = path.with_name(path.name + ".bak")
    shutil.copy2(path, backup)
    path.write_text(new, encoding="utf-8")

    print(f"Fixed: {path}")

print(f"\nFixed {len(affected)} files. Original files have .bak copies.")

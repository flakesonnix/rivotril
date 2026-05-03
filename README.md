# Dotfiles Framework

Reusable Nix framework extracted from the main dotfiles repository.

## Contents

- `lib/`
  Reusable framework helpers, validation, and renderers.
- `docs/framework.md`
  Framework reference.
- `docs/data-model.md`
  Data model reference.
- `docs/adoption-guide.md`
  Guide for using the framework in another repository.

## Flake output

This flake exports:

- `lib`

Example consumer:

```nix
inputs.framework.url = "path:../dotfiles-framework";

let
  frameworkLib = inputs.framework.lib;
in
  frameworkLib.framework.resolve
```

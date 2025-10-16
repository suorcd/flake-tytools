# dirtywave-m8 Flake

This Nix flake provides the `tytools` package from the `nixos-unstable` channel.

## Usage

### Prerequisites

- [Nix](https://nixos.org/download.html) with flake support enabled.

### Build and Install `tytools`

To build the `tytools` package:

```sh
nix build .#tytools
```

The resulting binaries will be available in the `result/bin` directory.

To install `tytools` into your user profile:

```sh
nix profile add .#tytools
```

### Use as an Input in Other Flakes

You can use this flake as an input in your own `flake.nix`:

```nix
inputs.dirtywave-m8.url = "github:<your-username>/dirtywave-m8";
```

Then reference the package:

```nix
packages.x86_64-linux.tytools = inputs.dirtywave-m8.packages.x86_64-linux.tytools;
```

## Notes

- This flake currently only provides `tytools` for `x86_64-linux`.
- The default package is set to `tytools`.


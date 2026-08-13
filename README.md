[![PhotinoX Logo](https://raw.githubusercontent.com/ivanvoyager/PhotinoX/refs/heads/master/assets/photinox-logo.png)](https://github.com/ivanvoyager/PhotinoX)

# PhotinoX.All

Meta repository for local development of all PhotinoX modules.

This repository contains the main PhotinoX repositories as Git submodules and is intended for coordinated local development, cross-repository testing, and release snapshot tracking.

## Repositories

- [**PhotinoX.Native**](https://github.com/ivanvoyager/PhotinoX.Native) - native WebView host binaries for Windows, macOS, and Linux.
- [**PhotinoX**](https://github.com/ivanvoyager/PhotinoX) - managed .NET wrapper around the native layer.
- [**PhotinoX.App**](https://github.com/ivanvoyager/PhotinoX.App) - application composition layer.
- [**PhotinoX.Blazor**](https://github.com/ivanvoyager/PhotinoX.Blazor) - Blazor integration.
- [**PhotinoX.Server**](https://github.com/ivanvoyager/PhotinoX.Server) - optional local static-file server.
- [**PhotinoX.Samples**](https://github.com/ivanvoyager/PhotinoX.Samples) - sample projects.

## Clone

```sh
git clone --recurse-submodules https://github.com/ivanvoyager/PhotinoX.All.git
```

## Bootstrap

Use one of the `bootstrap.cmd`, `bootstrap.ps1`, `bootstrap.sh` scripts from the [tools](https://github.com/ivanvoyager/PhotinoX.All/tree/main/tools) directory to initialize submodules and update them to the current development branches.

## Local project references

The repository root contains `Directory.Build.props`.  
`PhotinoX_UseLocalProjects` controls dependency resolution across the local workspace:
- `true` - use local project references. This is the normal mode for local development.
- `false` - use NuGet package references. This is useful for package-based build or pack validation.
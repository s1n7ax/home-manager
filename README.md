# Welcome to my home-manager configuration

## How to use

- Clone the repository

```shell
git clone https://github.com/s1n7ax/home-manager.git
```

- Update flakes

```shell
nix flake update
```

- Install the system

```shell
home-manager --impure switch --refresh --flake ./#desktop
                                                 #^^^^^^^^ profile name here
```

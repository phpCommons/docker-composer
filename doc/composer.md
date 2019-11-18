# Composer 

### Why?
Docker images are on hub - ok!

But it the target of this `repostiory` is that You want to install only composer dependecies in project without application container (FROM php:...) and You need faster and small tool to build composer from my Host, the same as composer beeing installed on host natively from Packages Repository on Your Linux Distribution.


### In the future
Automation install `composer` bash script to `/usr/bin/` or `/usr/local/bin/`  with credentials to `chown` command by sudo

### Requirements
- `sudo`

### Installation

1. Download `this` project (by `donwload button`, `curl`, `wget` or the other solution) or only `Dockerfile` with `composer` bash script 
2. Move `composer` bash script to `/usr/bin` or `/usr/local/bin/` or wherether your $PATH-kind variable detects the binaries
3. Run `chmod +x` on `/usr/bin/composer` or `/usr/local/bin/composer`

Optional:

1. If you don't want always passing your password for `sudo` command. Edit `/etc/sudoers` file by `visudo` command 
2. Add your user `youruser ALL=(ALL) NOPASSWD: /usr/bin/chown*,/usr/bin/composer*,/usr/bin/chown`

Attention!!!
Please be sure, that your `/etc/sudoers` file does not contains any exclutions or colisions from your groups like:
```bash
%wheel ALL=(ALL) ALL
```

### Usage
Go to your PHP project with composer.json and call to check your installation.
```bash
composer install
```
OR
Go to your PHP project **without** composer.json and call to check your installation.
```bash
composer init
```

# \[Attention!!!\] `composer.yaml` file
```YAML
image: composer:latest
```

[<< previous](../README.md)
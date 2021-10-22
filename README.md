# GR.cr

<a href="https://github.com/red-data-tools/GR.rb"><img alt="GR.rb" src="https://user-images.githubusercontent.com/5798442/124949370-76312280-e04c-11eb-8e1e-e3a092284584.png" width="366" height="300" align="right"></a>

:construction: Under development :construction:

[Crystal](https://github.com/crystal-lang/crystal) bindings to [GR framework](https://github.com/sciapp/gr)

GR.cr has been forked from [gr-crystal](https://github.com/jmakino/gr-crystal) by [Jun Makino](https://github.com/jmakino)

## Installation

### GR Installation

#### Linux, Mac, Windows - Official release

Download [official release](https://github.com/sciapp/gr/releases).
Set `GRDIR` to specify GR directory.

```sh
export GRDIR="your/path/to/gr"
```

#### Linux - OpenSUSE build service

https://software.opensuse.org//download.html?project=science%3Agr-framework&package=gr

```sh
export GRDIR="/usr/gr"
```

#### Linux - Red-data-tools

[packages.red-data-tools.org](https://github.com/red-data-tools/packages.red-data-tools.org) provides `libgr-dev`, `libgr3-dev` and `libgrm-dev`

APT - Debian GNU/Linux and Ubuntu 

```sh
sudo apt install -y -V ca-certificates lsb-release wget
wget https://packages.red-data-tools.org/$(lsb_release --id --short | tr 'A-Z' 'a-z'\
  )/red-data-tools-apt-source-latest-$(lsb_release --codename --short).deb
sudo apt install -y -V ./red-data-tools-apt-source-latest-$(lsb_release --codename --short).deb
sudo apt update
sudo apt install libgrm-dev
```

Yum - CentOS

```sh
(. /etc/os-release && sudo dnf install -y https://packages.red-data-tools.org/centos/${VERSION_ID}/red-data-tools-release-latest.noarch.rpm)
sudo dnf install -
```

#### Mac - Homebrew

```sh
brew install libgr
```

### GR.cr installation

Add the dependency to your `shard.yml`:

```yaml
dependencies:
  grlib:
    github: kojix2/GR.cr
```

Run `shards install`

## API Overview (Plan)

* `libGR`, `libGR3`, `libGRM` : call native functions directly.
* `GR`, `GR3`, `GRM` : call module function customized for Crystal.

```
  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐
  │     GRM      │  │      GR      │  │      GR3     │
  │ ┌──────────┐ │  │ ┌──────────┐ │  │ ┌──────────┐ │
  │ │  LibGRM  │ │  │ │  LibGR   │ │  │ │  LibGR3  │ │
  │ │          │ │  │ │          │ │  │ │          │ │
  │ │          │ │  │ │          │ │  │ │          │ │
  │ └──────────┘ │  │ └──────────┘ │  │ └──────────┘ │
  │              │  │              │  │              │
  │              │  │              │  │              │
  └──────────────┘  └──────────────┘  └──────────────┘
```

## Quick Start

```crystal
require "../src/grm"

n = 1000
x = [] of Float64
y = [] of Float64
z = [] of Float64
n.times do |i|
  x << i * 30.0 / n
  y << Math.cos(x[i]) * x[i]
  z << Math.sin(x[i]) * x[i]
end

plot_types = %w[line hexbin polar shade stem step contour
  trisurf plot3 scatter scatter3]

plot_types.each do |type|
  GRM.clear
  args = GRM.args_new
  GRM.args_push(args, "x", "nD", n, x)
  GRM.args_push(args, "y", "nD", n, y)
  GRM.args_push(args, "z", "nD", n, z)
  GRM.args_push(args, "kind", "s", type)
  GRM.args_push(args, "title", "s", type)
  GRM.plot(args)
  sleep 2
end
```

## Usage

Please see the example directory.

## Development

Low-level bindings are automatically generated by [crystal_lib](https://github.com/crystal-lang/crystal_lib).

GR.cr is a library under development, so even small improvements like fixing typos are welcome! Please feel free to send us your PR.

* Look at [GR.rb](https://github.com/red-data-tools/GR.rb) and implement the missing methods
* Report bugs
* Fix bugs and submit pull requests
* Write, clarify, or fix documentation
* Suggest or add new features

## Acknowledgements

We would like to thank Josef Heinen, the creator of [GR](https://github.com/sciapp/gr) and [GR.jl](https://github.com/jheinen/GR.jl), Florian Rhiem, the creator of [python-gr](https://github.com/sciapp/python-gr), and all [GR](https://github.com/sciapp/gr) developers.

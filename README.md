# Uabble (Pronounced "Wobble")

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Overview

This is a fun little experiment in creating a mid-size project in the [Uiua](https://github.com/uiua-lang/uiua) language. 
When run, it procedurally generates noisy, weird images that can sometimes be quite pretty. Honestly, it's a real toss-up
on what you get. I find that keeping the GridModulus setting at around 25% of the image dimension is helpful for getting 
clearer images on average.

## Installation

This program is written in [Uiua](https://github.com/uiua-lang/uiua), so you will need to install that
to use this.

## Usage
Usage could not be more straightforward:
```bash
$ git clone https://github.com/jtrieb1/uabble.git
$ cd uabble
$ uiua run
```
After executing `uiua run`, the image will be placed in the `renders` folder.

You may want to change a few of the helpfully-labeled settings in main.ua prior to running Uabble.

## Examples
See the `examples` directory for some sample outputs from this program. Unfortunately, I did not save
what parameters were used to create them. Mistakes were made.

## Contributing
I don't see why you'd necessarily want to, but feel free to put in a pull request if you like.

## License
Covered under the MIT license. I just think this is neat, do whatever you want.


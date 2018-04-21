#!/bin/sh

set -eou pipefail

brew tap tworingsoft/formulae

find Formula -name "*.rb" -type f | xargs -I @ basename @ .rb | xargs -t -I @ brew audit --strict --online tworingsoft/formulae/@

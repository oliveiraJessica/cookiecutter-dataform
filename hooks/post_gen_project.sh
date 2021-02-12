#! /usr/bin/env bash

set -eu
mv * ..
rm -rf ../root
#! /usr/bin/env bash

set -eu
mv * ..
rm -rf ../root
rm -f "../definitions/{%- if cookiecutter.enum_folders == "yes" -%} 00_ {% endif %}source/.keep"
rm -f "../definitions/{%- if cookiecutter.enum_folders == "yes" -%} 01_ {% endif %}staging/.keep"
rm -f "../definitions/{%- if cookiecutter.enum_folders == "yes" -%} 02_ {% endif %}tests/.keep"
rm -f "../definitions/{%- if cookiecutter.enum_folders == "yes" -%} 03_ {% endif %}reports/.keep"
rm -f "../includes/.keep"


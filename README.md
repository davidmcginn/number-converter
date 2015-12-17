# Number Converter

Ruby gem for converting a number into another format.

## Installation

To install the gem manually:

    gem build number_converter.gemspec
    gem uninstall number_converter
    gem install number_converter-X.X.X.gem

## Rebuild

There is also a script which performs the installation:

    ./rebuild.sh

## Executables

    Usage:
      bin/number_converter [number] [format]
    Valid formats:
      roman


## Client

To run:

    ruby number_converter_client.rb
#!/bin/bash
gem uninstall number_converter
rm -rf ./number_converter*.gem
gem build number_converter.gemspec
bundle install
gem install number_converter --local
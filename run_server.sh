#!/usr/bin/env bash
# Use Homebrew Ruby 3.1 (Jekyll 3.9 / Liquid 4.0 are incompatible with Ruby 3.2+)
export PATH="/opt/homebrew/opt/ruby@3.1/bin:$PATH"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Install dependencies into vendor/bundle if missing
if ! bundle check >/dev/null 2>&1; then
  bundle config set --local path 'vendor/bundle'
  bundle install
fi

bundle exec jekyll serve --livereload

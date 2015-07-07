# SixArm.com » Ruby » <br> JSON API helpers for jsonapi.org

[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_jsonapi/badges/gpa.svg)](https://codeclimate.com/github/SixArm/sixarm_ruby_jsonapi)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_jsonapi.png)](https://travis-ci.org/SixArm/sixarm_ruby_jsonapi)

* Doc: <http://sixarm.com/sixarm_ruby_jsonapi/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_jsonapi>
* Repo: <http://github.com/sixarm/sixarm_ruby_jsonapi>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

This gem provides helper classes for the JSON API standard for data exchange.

See https://jsonapi.org for the standard.

For docs go to <http://sixarm.com/sixarm_ruby_jsonapi/doc>

Want to help? We're happy to get pull requests.


## Install quickstart

Install:

    gem install sixarm_ruby_jsonapi

Bundler:

    gem "sixarm_ruby_jsonapi", ">=1.0.0", "<2"

Require:

    require "sixarm_ruby_jsonapi"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_jsonapi --trust-policy HighSecurity

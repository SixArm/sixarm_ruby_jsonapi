# -*- coding: utf-8 -*-
require "minitest/autorun"
Minitest::Test ||= MiniTest::Unit::TestCase
require "simplecov"
SimpleCov.start

[
  'error',
].map{|x|
  require "sixarm_ruby_jsonapi_test/#{x}_test.rb"
}

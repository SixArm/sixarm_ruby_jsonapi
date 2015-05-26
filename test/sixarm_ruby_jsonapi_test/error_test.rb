# -*- coding: utf-8 -*-
require 'minitest/autorun'
Minitest::Test ||= MiniTest::Unit::TestCase
require 'simplecov'
SimpleCov.start
require 'sixarm_ruby_jsonapi'

describe JSONAPI::Error do

  ## Standard fields
  let(:id){ 1 }  # A unique identifier for this particular occurrence of the problem.
  let(:href){ "https://example.com" }
  let(:status){ "200" }
  let(:code){ "20000" }
  let(:title){ "My Title" }
  let(:detail){ "My Detail" }
  let(:source){ {"pointer" => pointer, "parameter" => parameter} }
  let(:pointer){ "/data" }
  let(:parameter){ "my-query-parameter" }
  let(:meta){ "Meta" }

  ## Demo
  let(:error){
    JSONAPI::Error.new(
      id: id,
      href: href,
      status: status,
      code: code,
      title: title,
      detail: detail,
      source: source,
      pointer: pointer,
      parameter: parameter,
      meta: meta
    )
  }

  describe "#initialize" do

    it "set id" do
      error.id.must_equal id
    end

    it "set href" do
      error.href.must_equal href
    end

    it "set status" do
      error.status.must_equal status
    end

    it "set code" do
      error.code.must_equal code
    end

    it "set title" do
      error.title.must_equal title
    end

    it "set detail" do
      error.detail.must_equal detail
    end

    it "set source" do
      error.source.must_equal source
    end

    it "set pointer" do
      error.pointer.must_equal pointer
    end

    it "set parameter" do
      error.parameter.must_equal parameter
    end

    it "set meta" do
      error.meta.must_equal meta
    end

  end

  describe "#source" do

    before do
      @e = JSONAPI::Error.new
    end

    it "is nil when nothing is set" do
      @e.source.must_equal nil
    end

    it "uses the parameter when it's set" do
      @e.parameter = parameter
      @e.source.must_equal({"parameter" => parameter})
    end

    it "uses the pointer when it's set" do
      @e.pointer = pointer
      @e.source.must_equal({"pointer" => pointer})
    end

    it "uses the parameter and pointer when they're set" do
      @e.parameter = parameter
      @e.pointer = pointer
      @e.source.must_equal({"parameter" => parameter, "pointer" => pointer})
    end

  end

end

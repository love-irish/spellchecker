# encoding: UTF-8

require 'test_helper'

class Spellchecker::WordProcessor::Test < ActiveSupport::TestCase
  test "check Spellchecker::WordProcessor is a class" do
    assert_kind_of Class, Spellchecker::WordProcessor
  end

  # Check that current setup works
  test "#process returns dia for diu" do
    nlp = Spellchecker::WordProcessor.new "diu"
    assert_equal "dia", nlp.process
  end
end

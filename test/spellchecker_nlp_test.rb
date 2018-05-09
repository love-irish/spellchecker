require 'test_helper'

class Spellchecker::NLP::Test < ActiveSupport::TestCase
  test "check Spellchecker::NLP is a module" do
    assert_kind_of Module, Spellchecker::NLP
  end
  
  # Check that current setup works
  test "#process returns param" do
    assert_equal ["foo"], Spellchecker::NLP.process("foo")
  end
end

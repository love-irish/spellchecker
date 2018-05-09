require 'test_helper'

class Spellchecker::Test < ActiveSupport::TestCase
  test "check Spellchecker is a module" do
    assert_kind_of Module, Spellchecker
  end
end
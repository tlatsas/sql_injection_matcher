require 'test_helper'

class SqlInjectionMatcherTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::SqlInjectionMatcher::VERSION
  end

  def test_it_does_something_useful
    injection_strings = [
      "1%'\taND\t'8%'='3",
      "1%'/**/aND/**/'8%'='3",
      "%' aND '8%'='8",
    ]

   injection_strings.each do |string|
      assert SqlInjectionMatcher::is_sql_injection?(string)
    end
  end
end

require_relative 'friend'
require 'minitest/unit'
require 'minitest/autorun'

class TestFriend < MiniTest::Unit::TestCase
  def test_fullname
    person = Friend.new "Yuichi", "Yoshida"
    assert_equal "YOSHIDA, Yuichi", person.fullname
  end
end
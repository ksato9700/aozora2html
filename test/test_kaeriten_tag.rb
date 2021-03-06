# encoding: utf-8
require 'test_helper'
require 'aozora2html'

class KaeritenTagTest < Test::Unit::TestCase
  def setup
    stub(@parser).block_allowed_context?{true}
  end

  def test_kaeriten_new
    tag = Kaeriten_tag.new(@parser,"aaa")
    assert_equal Kaeriten_tag, tag.class
    assert_equal true, tag.kind_of?(Inline_tag)
  end

  def test_to_s
    tag = Kaeriten_tag.new(@parser,"テスト".encode("shift_jis"))
    assert_equal "<sub class=\"kaeriten\">テスト</sub>", tag.to_s.encode("utf-8")
  end

  def teardown
  end
end

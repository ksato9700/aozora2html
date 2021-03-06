# encoding: utf-8
require 'test_helper'
require 'aozora2html'

class DakutenKatakanaTagTest < Test::Unit::TestCase
  def setup
    @orig_gaiji_dir = $gaiji_dir
    $gaiji_dir = "g_dir"
    stub(@parser).block_allowed_context?{true}
  end

  def test_dakuten_katakana_new
    tag = Dakuten_katakana_tag.new(@parser,1,"ア".encode("shift_jis"))
    assert_equal Dakuten_katakana_tag, tag.class
    assert_equal true, tag.kind_of?(Inline_tag)
  end

  def test_to_s
    tag = Dakuten_katakana_tag.new(@parser,1,"ア".encode("shift_jis"))
    assert_equal "<img src=\"g_dir/1-07/1-07-81.png\" alt=\"※(濁点付き片仮名「ア」、1-07-81)\" class=\"gaiji\" />", tag.to_s.encode("utf-8")
  end

  def teardown
    $gaiji_dir = @orig_gaiji_dir
  end
end

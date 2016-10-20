require 'test_helper'

class BbspostTest < ActiveSupport::TestCase

  def setup
    # ŽŸ‚Ìs‚ÍŠµK“I‚ÉŠÔˆá‚Á‚Ä‚¢‚é
    @bbspost = Bbspost.new(content: "Lorem ipsum", username: "takashi")
  end

  test "should be valid" do
    assert @bbspost.valid?
  end

  test "username should be present" do
    @bbspost.username = nil
    assert_not @bbspost.valid?
  end

  test "content should be present" do
    @bbspost.content = "   "
    assert_not @bbspost.valid?
  end

  test "username should be at most 20 characters" do
    @bbspost.username = "a" * 20
    assert @bbspost.valid?
  end

  test "username should be at most 20 characters2" do
    @bbspost.username = "a" * 21
    assert_not @bbspost.valid?
  end

  test "content should be at most 200 characters" do
    @bbspost.content = "a" * 200
    assert @bbspost.valid?
  end

  test "content should be at most 200 characters2" do
    @bbspost.content = "a" * 201
    assert_not @bbspost.valid?
  end

  test "order should be most recent first" do
    assert_equal bbsposts(:most_recent), Bbspost.first
  end
end
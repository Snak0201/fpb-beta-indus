require "test_helper"

class Blog::CommitteeTest < ActiveSupport::TestCase
  test "nameが存在する場合" do
    committee = Blog::Committee.new(name: "Sample Committee")
    assert committee.valid?
  end

  test "nameが存在しない場合" do
    committee = Blog::Committee.new(name: "")
    assert_not committee.valid?
    assert_includes committee.errors[:name], "can't be blank"
  end
end

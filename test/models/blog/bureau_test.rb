require "test_helper"

class Blog::BureauTest < ActiveSupport::TestCase
  test "nameが存在する場合" do
    bureau = Blog::Bureau.new(name: "Sample Bureau")
    assert bureau.valid?
  end

  test "nameが存在しない場合" do
    bureau = Blog::Bureau.new(name: "")
    assert_not bureau.valid?
    assert_includes bureau.errors[:name], "can't be blank"
  end
end

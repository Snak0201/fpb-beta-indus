require "test_helper"

class Blog::ArticleTest < ActiveSupport::TestCase
  test "titleが存在する場合" do
    article = Blog::Article.new(title: "Sample Article")
    assert article.valid?
  end

  test "titleが存在しない場合" do
    article = Blog::Article.new(title: "")
    assert_not article.valid?
    assert_includes article.errors[:title], "can't be blank"
  end
end

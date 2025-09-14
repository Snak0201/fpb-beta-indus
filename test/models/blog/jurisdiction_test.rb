require "test_helper"

class Blog::JurisdictionTest < ActiveSupport::TestCase
  test "有効な場合" do
    committee = Blog::Committee.create!(name: "Sample Committee")
    article = Blog::Article.create!(title: "Sample Article")
    jurisdiction = Blog::Jurisdiction.new(committee: committee, article: article)
    assert jurisdiction.valid?
  end

  test "委員会と記事の組み合わせが一意でない場合" do
    committee = Blog::Committee.create!(name: "Sample Committee")
    article = Blog::Article.create!(title: "Sample Article")
    Blog::Jurisdiction.create!(committee: committee, article: article)
    duplicate_jurisdiction = Blog::Jurisdiction.new(committee: committee, article: article)
    assert_not duplicate_jurisdiction.valid?
    assert_includes duplicate_jurisdiction.errors[:committee_id], "has already been taken"
  end
end

# frozen_string_literal: true

require "test_helper"

class HeaderComponentTest < ViewComponent::TestCase
  test "ホームへのURLが含まれること" do
    render_inline(HeaderComponent.new)

    assert_selector "a[href='/']", text: "ホーム"
  end
end

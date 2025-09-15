require "test_helper"

class AdminsControllerTest < ActionDispatch::IntegrationTest
  test "ログインしていない場合はリダイレクトされる" do
    get admins_index_url
    assert_redirected_to new_session_url
  end

  test "ログインしている場合は管理画面が表示される" do
    user = users(:one)
    post session_url, params: { email_address: user.email_address, password: "password" }
    get admins_index_url
    assert_response :success
    assert_select "h1", "管理画面"
  end
end

class AdminsController < AuthenticationController
  def index
    @user = Current.session.user
  end
end

module UsersHelper
  def setup_user(user)
      user.build_info unless user.info
      user
  end
end

module DashboardHelper

  def accountName
    @current_user.account.name.capitalize
  end

end

module DashboardHelper

  def accountName
    unless @current_user.account == nil
      @current_user.account.name.capitalize
    else
      @current_user.username + "'s"
    end
  end

end

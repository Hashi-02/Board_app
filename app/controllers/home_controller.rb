class HomeController < ApplicationController

  before_action :forbid_login_user, {only: [:top]}

  def top
      @posts = Board.last(3)
  end
end

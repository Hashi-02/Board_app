class HomeController < ApplicationController
  def top
      @posts = Board.all.order(created_at: :desc)
  end
end

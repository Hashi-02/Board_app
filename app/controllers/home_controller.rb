class HomeController < ApplicationController
  def top
      @posts = Board.last(3)
  end
end

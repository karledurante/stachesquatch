class HomeController < ApplicationController

  def index
    @goal = Goal.first || Goal.new
  end
end
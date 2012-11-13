class HomeController < ApplicationController

  def index
    @goal = Goal.first || Goal.new
  end

  # special one time buy case
  def guct
  end
end
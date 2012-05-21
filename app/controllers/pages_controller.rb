class PagesController < ApplicationController
  def home
    @title = "Welcome!"
    render 'home'
  end

end

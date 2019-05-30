class PagesController < ApplicationController
  
  def home 
    redirect_to chef_path if logged_in?
  end 
end 
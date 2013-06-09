class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_up

  private #-------

  def set_up
    @page_id = 'home'
    # other set up items
  end




end

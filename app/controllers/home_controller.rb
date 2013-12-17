class HomeController < ApplicationController
  def index
  end

  def theme
    $current_theme = params[:theme]
    redirect_to :back
  end
end

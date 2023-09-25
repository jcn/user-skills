class ExamplesController < ApplicationController
  def page
    render action: params[:page]
  end
end

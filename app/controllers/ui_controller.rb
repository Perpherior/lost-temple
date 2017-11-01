class UiController < ApplicationController
  def index
    if :html == request.format.symbol
      render html: '', layout: "application"
    else
      render nothing: true, status: 404
    end
  end
end

class ParentsController < ApplicationController
  def index
    @parents=Parent.all
  end

  def show
    @parents=Parent.find(params[:id])
  end

end

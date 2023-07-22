class WritesController < ApplicationController

  def index
    @writes = Write.all
  end

  def new
    @write = Write.new
  end

  def show
  end
  
end

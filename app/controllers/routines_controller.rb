class RoutinesController < ApplicationController
  def index
  	@routines = Routine.all
  	render "routines/index"
  end
end

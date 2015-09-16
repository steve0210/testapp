class CustomersController < ApplicationController

  def index
    @appointment = params[:name].presence && 
      Appointment.joins(:pet).merge(Pet.where(:name => params[:name])).first
  end

end
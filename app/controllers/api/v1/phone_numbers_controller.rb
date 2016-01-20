class Api::V1::PhoneNumbersController < ApplicationController

  def create
    @obj = PhoneNumber.new(email: params[:email], cilantro_identifier: params[:cilantro_identifier])
    if @obj.save
      render json: @obj
    else
      render_obj_errors
    end
  end

end

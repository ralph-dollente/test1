module Api
  module V1
    class PhoneNumbersController < ApplicationController
      def random
        @options = {
          msisdn: Generator.random,
          email: params[:email],
          status: "assigned",
          cilantro_identifier: params[:cilantro_id]
        }
        @phone_number = PhoneNumber.create(@options)
        render json: @phone_number
      end
    end
  end
end

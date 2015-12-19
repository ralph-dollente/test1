module Api
  module V1
    class PhoneNumbersController < ApplicationController
      def random
        @options = {
          msisdn: RESERVED_EMAIL.include?(params[:email]) ?
                    SPECIAL.select{ |x| x["email"] == params[:email] }[0]["msisdn"] :
                    Generator.random,
          email: params[:email],
          status: "assigned",
          cilantro_identifier: params[:cilantro_identifier]
        }
        @phone_number = PhoneNumber.create(@options)
        render json: @phone_number
      end
    end
  end
end

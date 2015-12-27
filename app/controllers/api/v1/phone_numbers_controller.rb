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
        @phone_number = PhoneNumber.new(@options)
        if @phone_number.save
          render json: @phone_number
        else
          render json: { code: 422, errors: @phone_number.errors.full_messages },
            status: :unprocessable_entity
        end
      end
    end
  end
end

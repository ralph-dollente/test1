class ApplicationController < ActionController::API
  include ActionController::Serialization
  before_filter :validate_api_key

  private
    def validate_api_key
      unless ApiKey.validate(request.headers["X-Barley-API-Key"])
        render json: { code: 401, errors: [ "API key is missing or invalid" ]}, status: 401
      end
    end

    def render_obj_errors obj=nil
    	render json: { code: 422, errors: (obj || @obj).errors.full_messages }, status: :unprocessable_entity
    end
end

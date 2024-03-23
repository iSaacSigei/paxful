# app/controllers/application_controller.rb
class ApplicationController < ActionController::API
    # before_action :authorize_request
    
    # private
    
    # def authorize_request
    #   @current_admin = authorize_admin
    #   render_unauthorized unless @current_admin
    # end
  
    # def authorize_admin
    #   token = request.headers['Authorization']
    #   return nil unless token && decode_token(token)
  
    #   Admin.find_by(id: decode_token(token)['admin_id'])
    # end
  
    # def decode_token(token)
    #   begin
    #     JWT.decode(token.split(' ')[1], Rails.application.secret_key_base)[0]
    #   rescue JWT::DecodeError
    #     nil
    #   end
    # end
  
    # def render_unauthorized
    #   render json: { error: 'Unauthorized access' }, status: :unauthorized
    # end
  end
  
# app/controllers/admin_sessions_controller.rb
class AdminSessionsController < ApplicationController
  # skip_before_action :authorize_request, only: :create

  # def create
  #   admin = Admin.find_by(email: params[:email])
  #   if admin && admin.authenticate(params[:password])
  #     token = generate_token(admin)
  #     render json: { message: 'Admin login successful', token: token }, status: :ok
  #   else
  #     render json: { error: 'Invalid admin credentials' }, status: :unauthorized
  #   end
  # end

  # private

  # def generate_token(admin)
  #   JWT.encode({ admin_id: admin.id }, Rails.application.secret_key_base)
  # end
end

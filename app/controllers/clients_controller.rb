class ClientsController < ApplicationController
  # before_action :authorize_access, only: [:index]

  def index
    clients = Client.order(created_at: :desc)
    render json: clients, status: :ok
  end

  def create
    client = Client.new(client_params)
    if client.save
      # Send email notification to admins
      AdminMailer.new_client_notification(client).deliver_now
      
      render json: { message: 'Client created successfully' }, status: :created
    else
      render json: { errors: client.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def client_params
    params.require(:client).permit(:email, :username, :password)
  end

  # def authorize_access
  #   # Check if the action requires authorization
  #   render_unauthorized if action_requires_authorization?
  # end

  # def action_requires_authorization?
  #   action_name == 'index' && !@current_admin
  # end

  # def render_unauthorized
  #   render json: { error: 'Unauthorized access' }, status: :unauthorized
  # end
end

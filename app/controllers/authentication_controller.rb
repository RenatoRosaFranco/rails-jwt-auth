# frozen_string_literal: true

class AuthenticationController
  before_action :authorize_request, except: [:login]

  def login
    if @user&.authenticate(params[:password])
      token = JsonWebToken.encode()
      time  = Time.now + 24.hours.to_i
      render json: {
        token: token, exp: time.strftime(),
        username: @user.username, status: :ok
      }
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end


  private

  def login_params
    params.require(:login).permit(:email, :password)
  end
end
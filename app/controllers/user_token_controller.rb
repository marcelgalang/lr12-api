require 'pry'

class UserTokenController < Knock::AuthTokenController
binding.pry
  def get_user(jwt)
    decoded_token = JWT.decode jwt, Rails.application.secrets.secret_key_base, true, { :algorithm => 'HS256' }
    current_user = User.find(decoded_token[0]['sub'])

     current_user
  end
end

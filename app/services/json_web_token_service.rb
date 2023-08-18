# frozen_string_literal: true

class JsonWebTokenService
  SECRET_KEY = Rails.application.secrets_key_base.to_s

  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.enconde(payload, SECRET_KEY)
  end

  def self.decode(token)
    decoded = JWT.decode(token, SECRET_KEY)[0]
    HashWithIndifferentAcess.new decoded
  end
end
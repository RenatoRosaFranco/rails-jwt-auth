# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :email, format: { }
  validates :username, presence: true, uniqueness: true
  validates :password,
            length:  { minimum: 6, maximum: 8 },
            if: -> { new_record? || !password.nil? }
end
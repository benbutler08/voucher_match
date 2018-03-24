class Candidate < ApplicationRecord
  has_secure_password
  has_many :responses
end

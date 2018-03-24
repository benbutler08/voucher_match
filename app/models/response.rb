class Response < ApplicationRecord
  belongs_to :survey
  belongs_to :users
  belongs_to :question
end

class Response < ApplicationRecord
  belongs_to :survey
  belongs_to :candidates
  belongs_to :question
end

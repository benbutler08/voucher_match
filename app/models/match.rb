class Match < ApplicationRecord
  has_many :users, through: :users
end

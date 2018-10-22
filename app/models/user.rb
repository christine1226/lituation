class User < ApplicationRecord
  has_many :events
  validates :password, {length: {minimum:6}, presence:true}
  validates :name, {presence:true, uniqueness:true}
end

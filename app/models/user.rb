class User < ActiveRecord::Base
  validates_presence_of :account, :password, :name
  has_many :posts
end

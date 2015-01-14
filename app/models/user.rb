class User < ActiveRecord::Base
  validates_presence_of :account, :name
  has_many :posts
  has_one :info

  # delegate :name, :to => :nickname, :prefix => true, :allow_nil => true
end

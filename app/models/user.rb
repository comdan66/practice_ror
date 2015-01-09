class User < ActiveRecord::Base
  validates_presence_of :account, :password, :name
  belongs_to :job
end

class User < ActiveRecord::Base
    validates_presence_of :account, :password, :name
end

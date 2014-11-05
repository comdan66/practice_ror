class User < ActiveRecord::Base
    validates_presence_of :account, :name
end

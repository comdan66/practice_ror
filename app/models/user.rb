class User < ActiveRecord::Base
  validates_presence_of :account, :name
  has_many :posts
  has_one :info
  has_many :user_codes
  has_many :codes, :through => :user_codes

  accepts_nested_attributes_for :info, :allow_destroy => true, :reject_if => :all_blank, update_only: true
end

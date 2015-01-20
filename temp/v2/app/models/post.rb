class Post < ActiveRecord::Base
  validates_presence_of :title
  belongs_to :user

  def open?
    self.is_enabled == 1
  end

  def closed?
    !self.open?
  end


  def open!
    self.is_enabled = 1
    self.save!
  end

  def close!
    self.is_enabled = 0
    self.save!
  end
end

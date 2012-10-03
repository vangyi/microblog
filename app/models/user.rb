class User < ActiveRecord::Base
  attr_accessible :email, :username
  has_many :entries

  #validates_presence_of :username
  #validates_presence_of :email
  validates :username, :email, presence: true

end

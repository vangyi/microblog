class Entry < ActiveRecord::Base
  attr_accessible :post, :true, :user_id

  belongs_to :user
end

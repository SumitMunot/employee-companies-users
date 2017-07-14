class Company < ActiveRecord::Base
  has_many :employments
  has_many :users, through: :employments, :dependent => :delete_all
end

class User < ActiveRecord::Base
  has_many :employments
  has_many :companies, through: :employments, :dependent => :delete_all
end

class User < ActiveRecord::Base
  has_many :employments
  has_many :companies, through: :employments, :dependent => :delete_all
  validates :name, presence: true, length: { minimum: 2 }, if: :name_includes?

  def name_includes?
    name != "employee"
  end

end

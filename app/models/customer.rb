class Customer < ActiveRecord::Base
  validates :fullname, presence: true
  validates :fullname, uniqueness: true
  validates :phone, presence: true
end

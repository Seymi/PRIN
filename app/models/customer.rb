class Customer < ActiveRecord::Base
  attr_accessible :city, :company, :country, :email, :first_name, :last_name, :sex, :street, :street_number, :tel_fixline, :tel_mobile, :title, :zip
  has_many :test_objects
end

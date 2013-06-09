class TestObject < ActiveRecord::Base
  attr_accessible :desc, :detail_desc, :photo_extension, :punch, :punch_year, :weight, :customer_id

  belongs_to :customer
end

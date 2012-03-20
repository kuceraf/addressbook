class Address < ActiveRecord::Base
  belongs_to :company
  validates :city,  :presence => true
  validates :street,  :presence => true
  validates :zip_code, :format => { :with => /\A(\d{5}|\d{0})\z/}, :length => {:maximum => 5}
end

class Phone < ActiveRecord::Base
  belongs_to :company
  validates :phone_number, :format => { :with => /\A\+?(\d{0,3}\s?){0,10}\z/}, :length => { :maximum => 20 }, :presence => true
end

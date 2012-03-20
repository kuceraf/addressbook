class Company < ActiveRecord::Base
  validates :name,  :presence => true
  has_many :addresses, :dependent => :destroy
  has_many :emails, :dependent => :destroy
  has_many :phones, :dependent => :destroy
  
  accepts_nested_attributes_for :emails, :allow_destroy => :true,
    :reject_if => :all_blank
    
  accepts_nested_attributes_for :addresses, :allow_destroy => :true,
    :reject_if => :all_blank
    
  accepts_nested_attributes_for :phones, :allow_destroy => :true,
    :reject_if => :all_blank
end

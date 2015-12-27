class PhoneNumber < ActiveRecord::Base
  validates_uniqueness_of :email, :cilantro_identifier
end

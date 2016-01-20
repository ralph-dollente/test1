class PhoneNumber < ActiveRecord::Base
  
  validates_uniqueness_of :cilantro_identifier
  #validate :number_activity
  # Callback
  before_create :assign_msisdn, :set_default_status

  # Constants
  QUANRANTINE_TIME = 6

  # def self.inactive_number
  #   where("updated_at < ?", Time.now-QUANRANTINE_TIME.months).where(email: self.email)[0]
  # end

  private

  #
  # Checks if the number is active or not
  # if active, raise an error
  # if not, reassign that number
  #

  # ========= checking
  # def number_activity
  #   if self.inactive_number.present?
  #     #reassignment of VMIN
  #   else
  #     self.errors.add(:base, "Number is currently in use")
  #   end
  # end
  # ========= checking
  
  def assign_msisdn
    if RESERVED_EMAIL.include?(self.email)
      self.msisdn = SPECIAL.select{ |x| x["email"] == self.email }[0]["msisdn"]
    else
      self.msisdn = Generator.random
    end
  end

  def set_default_status
    self.status = "assigned"
  end

end

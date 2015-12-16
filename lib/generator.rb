module Generator
  class << self
    def random
      @range = ALLOC.sample
      rand(@range["start"]..@range["end"])
    end

    def is_available(msisdn)
      PhoneNumber.find_by(msisdn: msisdn).nil?
    end
  end
end
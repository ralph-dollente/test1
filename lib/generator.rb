module Generator
  class << self
    def random
      begin
        @range = ALLOC.sample
        @msisdn = rand(@range["start"]..@range["end"])
      end until Generator.is_available(@msisdn)
      @msisdn
    end

    def is_available(msisdn)
      PhoneNumber.find_by(msisdn: msisdn).nil? && !RESERVED_MSISDN.include?(msisdn)
    end
  end
end
require 'generator'

ALLOC = YAML.load_file("#{Rails.root}/config/allocations.yml")[Rails.env]
SPECIAL = YAML.load_file("#{Rails.root}/config/special.yml")[Rails.env]
RESERVED_MSISDN = SPECIAL.map{ |x| x["msisdn"] }
RESERVED_EMAIL = SPECIAL.map{ |x| x["email"] }
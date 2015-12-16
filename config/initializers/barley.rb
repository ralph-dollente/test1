require 'generator'

ALLOC = YAML.load_file("#{Rails.root}/config/allocations.yml")[Rails.env]
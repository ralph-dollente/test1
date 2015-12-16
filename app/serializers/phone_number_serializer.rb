class PhoneNumberSerializer < ActiveModel::Serializer
  attributes :msisdn, :email, :status, :available_after, :cilantro_identifier
end
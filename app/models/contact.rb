class Contact
  include Mongoid::Document
  has_one :tcm_basic_contact
  has_one :tcm_patient_info
end

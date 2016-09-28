class Contact
  include Mongoid::Document
  has_one :test_contact_basics, dependent: :destroy
  has_one :test_contact_details, dependent: :destroy
  has_one :tcm_basic_contact, dependent: :destroy
  has_one :tcm_patient_info, dependent: :destroy
end

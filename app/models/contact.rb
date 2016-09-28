class Contact
  include Mongoid::Document
  has_one :test_contact_basics, dependent: :destroy
  accepts_nested_attributes_for :test_contact_basics
  has_one :test_contact_details, dependent: :destroy
  accepts_nested_attributes_for :test_contact_details
  has_one :tcm_basic_contact, dependent: :destroy
  has_one :tcm_patient_info, dependent: :destroy
end

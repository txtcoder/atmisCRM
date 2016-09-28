class TestContactBasic
  include Mongoid::Document
  field :name, type: String
  has_one :contact
end

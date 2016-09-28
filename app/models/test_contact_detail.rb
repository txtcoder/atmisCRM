class TestContactDetail
  include Mongoid::Document
  field :age, type: Integer
  has_one :contact
end

class TestContactDetail
  include Mongoid::Document
  field :age, type: Integer
  belongs_to :contact, :foreign_key => 'contact_id'
end

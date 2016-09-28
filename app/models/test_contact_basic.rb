class TestContactBasic
  include Mongoid::Document
  field :name, type: String
  belongs_to :contact, :foreign_key => 'contact_id'
end

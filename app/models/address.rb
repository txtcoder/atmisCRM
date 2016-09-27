class Address
  include Mongoid::Document
  field :street, type: String
  field :city, type: String
  field :province, type: String
  field :postal_code, type: String

  embedded_in :addressable, polymorphic: true, touch: true
end

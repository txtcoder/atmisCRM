class Phone
  include Mongoid::Document
  field :phone_type, type: String
  field :phone_number, type: String
  embedded_in :phonable, polymorphic: true, touch: true
end

class TcmBasicContact
  include Mongoid::Document
  belongs_to :contact
  field :name, type: String
  field :picture, type: String
  embeds_one :address, as: :addressable
  embeds_one :phone, as: :phonable
  field :email, type:String
  field :weight, type:Integer
  field :height, type:Integer
  field :date_of_birth, type:Date
  field :occupation, type:String
end

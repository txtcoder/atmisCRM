class TcmBasicContact
  include Mongoid::Document
  has_one :contact
  field :name, type: String
  field :picture, type: String
  field :address, type: String
  field :birth_date, type: Date
  field :postal_code, type: String
  field :city, type: String
  field :province, type:String
  field :home_phone, type:String
  field :cell_phone, type:String
  field :work_phone, type:String
  field :preferred_contact, type:String
  field :referral, type:String
  field :email, type:String
  field :weight, type:Integer
  field :height, type:Integer
  field :occupation, type:String
end

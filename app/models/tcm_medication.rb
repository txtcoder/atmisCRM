class TcmMedication
  include Mongoid::Document

  embedded_in :tcm_patient_info
  field :name, type:String
  field :condition, type:String
end

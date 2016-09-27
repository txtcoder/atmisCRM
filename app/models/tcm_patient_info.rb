class TcmPatientInfo
  include Mongoid::Document
  belongs_to :contact
  

  #Head/Neck
  field :current_headaches, type: Boolean
  field :previous_headaches, type: Boolean

  field :current_eye_problems, type: Boolean
  field :previous_eye_problems, type: Boolean

  field :current_ear_problems, type: Boolean
  field :previous_ear_problems, type: Boolean

  field :current_hearing_loss, type: Boolean
  field :previous_hearing_loss, type: Boolean

  #Respiratory
  field :current_chronic_cough, type: Boolean
  field :previous_chronic_cough, type: Boolean

  field :current_short_breath, type: Boolean
  field :previous_short_breath, type: Boolean

  field :current_bronchitis, type: Boolean
  field :previous_bronchitis, type: Boolean

  field :current_asthma, type: Boolean
  field :previous_asthma, type: Boolean

  field :current_smoking, type: Boolean
  field :previous_smoking, type: Boolean

  #Cardiovascular
  field :current_high_blood_pressure, type: Boolean
  field :previous_high_blood_pressure, type: Boolean 

  field :current_low_blood_pressure, type: Boolean
  field :previous_low_blood_pressure, type: Boolean

  field :current_cchf, type: Boolean
  field :previous_cchf, type: Boolean

  field :current_heart_attack, type:Boolean
  field :previous_heart_attack, type:Boolean

  field :current_phlebitis, type:Boolean
  field :previous_phlebitis, type:Boolean

  field :current_stroke_cva, type:Boolean
  field :previous_stroke_cva, type:Boolean

  field :current_pacemaker_or_other, type:Boolean
  field :previous_pacemaker_or_other, type:Boolean

  #Other conditions
  field :current_difficult_digestion, type:Boolean
  field :previous_difficult_digestion, type:Boolean

  field :current_constipation, type:Boolean
  field :previous_constipation, type:Boolean

  field :current_liver, type:Boolean
  field :previous_liver, type:Boolean
  field :liver_problem, type:String

  field :current_gall_bladder, type:Boolean
  field :previous_gall_bladder, type:Boolean

  field :current_kidney, type:Boolean
  field :previous_kidney, type:Boolean

  field :current_bladder, type:Boolean
  field :previous_bladder, type:Boolean

  field :current_diabetes_onset, type:Boolean
  field :previous_diabetes_onset, type:Boolean

  field :current_sinus, type:Boolean
  field :previous_sinus, type:Boolean

  field :current_allergies, type:Boolean
  field :previous_allergies, type:Boolean

  field :current_insomnia, type:Boolean
  field :previous_insomnia, type:Boolean

  field :current_cancer, type:Boolean
  field :previous_cancer, type:Boolean

  field :current_arthritis, type:Boolean
  field :previous_arthritis, type:Boolean

  #Infections
  field :current_hepatitis, type:Boolean
  field :previous_hepatitis, type:Boolean

  field :current_herpes, type:Boolean
  field :previous_herpes, type:Boolean

  field :current_tb, type:Boolean
  field :previous_tb, type:Boolean

  field :current_hiv_aids, type:Boolean
  field :previous_hiv_aids, type:Boolean

  field :current_infections_others, type:Boolean
  field :previous_infections_others, type:Boolean

  #Women
  field :current_menstrual_problems, type:Boolean
  field :previous_menstrual_problems, type:Boolean

  field :current_gynaecological_surgery, type:Boolean
  field :previous_gynaecological_surgery, type:Boolean
  field :gynaecological_surgery_problems, type:String

  field :current_pregnant, type:Boolean
  field :previous_pregnant, type:Boolean
  field :pregnant_day, type:Integer
  field :pregnant_month, type:String
  field :pregnant_year, type:Integer

  field :current_menopausal_problems, type:Boolean
  field :previous_menopausal_problems, type:Boolean

  #skin
  field :current_skin_conditions, type:Boolean
  field :previous_skin_conditions, type:Boolean

  field :current_bruise_easily, type:Boolean
  field :previous_bruise_easily, type:Boolean

  #Muscles & joints
  field :current_pain_neck, type:Boolean
  field :current_stiff_neck, type:Boolean
  field :previous_pain_neck, type:Boolean
  field :previous_stiff_neck, type:Boolean

  field :current_pain_shoulders, type:Boolean
  field :current_stiff_shoulders, type:Boolean
  field :previous_pain_shoulders, type:Boolean
  field :previous_stiff_shoulders, type:Boolean

  field :current_pain_upper_back, type:Boolean
  field :current_stiff_upper_back, type:Boolean
  field :previous_pain_upper_back, type:Boolean
  field :previous_stiff_upper_back, type:Boolean

  field :current_pain_mid_back, type:Boolean
  field :current_stiff_mid_back, type:Boolean
  field :previous_pain_mid_back, type:Boolean
  field :previous_stiff_mid_back, type:Boolean

  field :current_pain_low_back, type:Boolean
  field :current_stiff_low_back, type:Boolean
  field :previous_pain_low_back, type:Boolean
  field :previous_stiff_low_back, type:Boolean

  field :current_pain_leg, type:Boolean
  field :current_stiff_leg, type:Boolean
  field :previous_pain_leg, type:Boolean
  field :previous_stiff_leg, type:Boolean
  field :leg_left, type:Boolean
  field :leg_right, type:Boolean

  field :current_pain_hip, type:Boolean
  field :current_stiff_hip, type:Boolean
  field :previous_pain_hip, type:Boolean
  field :previous_stiff_hip, type:Boolean
  field :hip_left, types:Boolean
  field :hip_right, types:Boolean

  field :current_pain_knee, type:Boolean
  field :current_stiff_knee, type:Boolean
  field :previous_pain_knee, type:Boolean
  field :previous_stiff_knee, type:Boolean
  field :knee_left, type:Boolean
  field :knee_right, type:Boolean

  field :current_pain_foot, type:Boolean
  field :current_stiff_foot, type:Boolean
  field :previous_pain_foot, type:Boolean
  field :previous_stiff_foot, type:Boolean
  field :foot_left, type:Boolean
  field :foot_right, type:Boolean

  #surgery
  field :surgery_type, type:String
  field :surgery_date, type:Date
  field :surgery_current_symptoms, type:String

  #Injury
  field :injury_type, type:String
  field :injury_date, type:Date
  field :injury_current_symptoms, type:String

  #Other medical conditions
  field :other_medical_conditions, type:String

  #Of special note
  field :of_special_note, type:String


  #primary care physician:
  field :physician_name, type:String
  field :physician_address, type:String
  field :physician_phone, type:String
  field :physician_last_visit_day, type:Integer
  field :physician_last_visit_month, type:String
  field :physician_last_visit_year, type:Integer

  #present involvement in other health care:
  field :present_involvement_in_other_health_care, type:Boolean
  field :involvement_in_chiropractic, type:Boolean
  field :involvement_in_physiotherapy, type:Boolean
  field :involvement_in_tcm, type:Boolean
  field :involvement_in_psychotherapy, type:Boolean
  field :involvement_in_massage_theraphy, type:Boolean
  field :involvement_in_others, type:Boolean
  field :involvmenet_in_others_text, type:String

  embeds_many :tcm_medications, as: :current_medications

  field :chemical_theraphy, type:Boolean
  field :radiotherapy, type:Boolean

  field :supplements, type:String
  field :chinese_herbals, type:String


end

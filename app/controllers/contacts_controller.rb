class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token
  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = Contact.all
    respond_to do |format|
        format.json { render json: @contacts.to_json(:include => [:tcm_basic_contact, :tcm_patient_info])}
    end
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
   respond_to do |format|
     format.json { render json: @contact.to_json(:include => [:tcm_basic_contact, :tcm_patient_info])}
   end
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
    @test_contact_basics=@contact.test_contact_basics
    @test_contact_details=@contact.test_contact_details
    @tcm_basic_contact=@contact.tcm_basic_contact
    @tcm_patient_info=@contact.tcm_patient_info
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new()
    #test_contact_details=TestContactDetail.new(test_contact_params[:test_contact_details])
    #test_contact_details.save
    #test_contact_basics=TestContactBasic.new(test_contact_params[:test_contact_basics])
    # test_contact_basics.save
    #@contact.test_contact_basics_id=test_contact_basics.id
    #@contact.test_contact_details_id=test_contact_details.id

    #do some check on which company it is
    ######
 
    
    ######
    #if it is tcm
    tcm_basic_contact=TcmBasicContact.new(tcm_contact_params[:tcm_basic_contact])
    tcm_basic_contact.save
    tcm_patient_info=TcmPatientInfo.new(tcm_contact_params[:tcm_patient_info])
    tcm_patient_info.save
    @contact.tcm_basic_contact_id=tcm_basic_contact.id
    @contact.tcm_patient_info_id=tcm_patient_info.id

    #end tcm
    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact, notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    @tcm_basic_contact.update(tcm_contact_params[:tcm_basic_contact])
    @tcm_patient_info.update(tcm_contact_params[:tcm_patient_info])
    respond_to do |format|
      if @contact.update(test_contact_params)
        format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.fetch(:contact, {})
    end

    def tcm_contact_params
      params.require(:contact).permit!
    end
    
    def test_contact_params
      params.require(:contact).permit( :test_contact_basics => [:name], :test_contact_details => [:age])
    end
end

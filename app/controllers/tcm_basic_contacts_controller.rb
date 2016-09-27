class TcmBasicContactsController < ApplicationController
  before_action :set_tcm_basic_contact, only: [:show, :edit, :update, :destroy]

  # GET /tcm_basic_contacts
  # GET /tcm_basic_contacts.json
  def index
    @tcm_basic_contacts = TcmBasicContact.all
  end

  # GET /tcm_basic_contacts/1
  # GET /tcm_basic_contacts/1.json
  def show
  end

  # GET /tcm_basic_contacts/new
  def new
    @tcm_basic_contact = TcmBasicContact.new
  end

  # GET /tcm_basic_contacts/1/edit
  def edit
  end

  # POST /tcm_basic_contacts
  # POST /tcm_basic_contacts.json
  def create
    @tcm_basic_contact = TcmBasicContact.new(tcm_basic_contact_params)

    respond_to do |format|
      if @tcm_basic_contact.save
        format.html { redirect_to @tcm_basic_contact, notice: 'Tcm basic contact was successfully created.' }
        format.json { render :show, status: :created, location: @tcm_basic_contact }
      else
        format.html { render :new }
        format.json { render json: @tcm_basic_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tcm_basic_contacts/1
  # PATCH/PUT /tcm_basic_contacts/1.json
  def update
    respond_to do |format|
      if @tcm_basic_contact.update(tcm_basic_contact_params)
        format.html { redirect_to @tcm_basic_contact, notice: 'Tcm basic contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @tcm_basic_contact }
      else
        format.html { render :edit }
        format.json { render json: @tcm_basic_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tcm_basic_contacts/1
  # DELETE /tcm_basic_contacts/1.json
  def destroy
    @tcm_basic_contact.destroy
    respond_to do |format|
      format.html { redirect_to tcm_basic_contacts_url, notice: 'Tcm basic contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tcm_basic_contact
      @tcm_basic_contact = TcmBasicContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tcm_basic_contact_params
      params.require(:tcm_basic_contact).permit!
    end
end

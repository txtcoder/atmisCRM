class TcmPatientInfosController < ApplicationController
  before_action :set_tcm_patient_info, only: [:show, :edit, :update, :destroy]

  # GET /tcm_patient_infos
  # GET /tcm_patient_infos.json
  def index
    @tcm_patient_infos = TcmPatientInfo.all
  end

  # GET /tcm_patient_infos/1
  # GET /tcm_patient_infos/1.json
  def show
  end

  # GET /tcm_patient_infos/new
  def new
    @tcm_patient_info = TcmPatientInfo.new
  end

  # GET /tcm_patient_infos/1/edit
  def edit
  end

  # POST /tcm_patient_infos
  # POST /tcm_patient_infos.json
  def create
    @tcm_patient_info = TcmPatientInfo.new(tcm_patient_info_params)

    respond_to do |format|
      if @tcm_patient_info.save
        format.html { redirect_to @tcm_patient_info, notice: 'Tcm patient info was successfully created.' }
        format.json { render :show, status: :created, location: @tcm_patient_info }
      else
        format.html { render :new }
        format.json { render json: @tcm_patient_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tcm_patient_infos/1
  # PATCH/PUT /tcm_patient_infos/1.json
  def update
    respond_to do |format|
      if @tcm_patient_info.update(tcm_patient_info_params)
        format.html { redirect_to @tcm_patient_info, notice: 'Tcm patient info was successfully updated.' }
        format.json { render :show, status: :ok, location: @tcm_patient_info }
      else
        format.html { render :edit }
        format.json { render json: @tcm_patient_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tcm_patient_infos/1
  # DELETE /tcm_patient_infos/1.json
  def destroy
    @tcm_patient_info.destroy
    respond_to do |format|
      format.html { redirect_to tcm_patient_infos_url, notice: 'Tcm patient info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tcm_patient_info
      @tcm_patient_info = TcmPatientInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tcm_patient_info_params
      params.fetch(:tcm_patient_info, {})
    end
end

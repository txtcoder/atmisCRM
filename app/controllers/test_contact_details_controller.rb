class TestContactDetailsController < ApplicationController
  before_action :set_test_contact_detail, only: [:show, :edit, :update, :destroy]

  # GET /test_contact_details
  # GET /test_contact_details.json
  def index
    @test_contact_details = TestContactDetail.all
  end

  # GET /test_contact_details/1
  # GET /test_contact_details/1.json
  def show
  end

  # GET /test_contact_details/new
  def new
    @test_contact_detail = TestContactDetail.new
  end

  # GET /test_contact_details/1/edit
  def edit
  end

  # POST /test_contact_details
  # POST /test_contact_details.json
  def create
    @test_contact_detail = TestContactDetail.new(test_contact_detail_params)

    respond_to do |format|
      if @test_contact_detail.save
        format.html { redirect_to @test_contact_detail, notice: 'Test contact detail was successfully created.' }
        format.json { render :show, status: :created, location: @test_contact_detail }
      else
        format.html { render :new }
        format.json { render json: @test_contact_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_contact_details/1
  # PATCH/PUT /test_contact_details/1.json
  def update
    respond_to do |format|
      if @test_contact_detail.update(test_contact_detail_params)
        format.html { redirect_to @test_contact_detail, notice: 'Test contact detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_contact_detail }
      else
        format.html { render :edit }
        format.json { render json: @test_contact_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_contact_details/1
  # DELETE /test_contact_details/1.json
  def destroy
    @test_contact_detail.destroy
    respond_to do |format|
      format.html { redirect_to test_contact_details_url, notice: 'Test contact detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_contact_detail
      @test_contact_detail = TestContactDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_contact_detail_params
      params.require(:test_contact_detail).permit(:age)
    end
end

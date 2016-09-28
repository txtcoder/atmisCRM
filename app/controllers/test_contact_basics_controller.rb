class TestContactBasicsController < ApplicationController
  before_action :set_test_contact_basic, only: [:show, :edit, :update, :destroy]

  # GET /test_contact_basics
  # GET /test_contact_basics.json
  def index
    @test_contact_basics = TestContactBasic.all
  end

  # GET /test_contact_basics/1
  # GET /test_contact_basics/1.json
  def show
  end

  # GET /test_contact_basics/new
  def new
    @test_contact_basic = TestContactBasic.new
  end

  # GET /test_contact_basics/1/edit
  def edit
  end

  # POST /test_contact_basics
  # POST /test_contact_basics.json
  def create
    @test_contact_basic = TestContactBasic.new(test_contact_basic_params)

    respond_to do |format|
      if @test_contact_basic.save
        format.html { redirect_to @test_contact_basic, notice: 'Test contact basic was successfully created.' }
        format.json { render :show, status: :created, location: @test_contact_basic }
      else
        format.html { render :new }
        format.json { render json: @test_contact_basic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_contact_basics/1
  # PATCH/PUT /test_contact_basics/1.json
  def update
    respond_to do |format|
      if @test_contact_basic.update(test_contact_basic_params)
        format.html { redirect_to @test_contact_basic, notice: 'Test contact basic was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_contact_basic }
      else
        format.html { render :edit }
        format.json { render json: @test_contact_basic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_contact_basics/1
  # DELETE /test_contact_basics/1.json
  def destroy
    @test_contact_basic.destroy
    respond_to do |format|
      format.html { redirect_to test_contact_basics_url, notice: 'Test contact basic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_contact_basic
      @test_contact_basic = TestContactBasic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_contact_basic_params
      params.require(:test_contact_basic).permit(:name)
    end
end

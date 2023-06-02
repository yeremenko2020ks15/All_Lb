class KliniksController < ApplicationController
  before_action :set_klinik, only: %i[ show edit update destroy ]

  # GET /kliniks or /kliniks.json
  def index
    @kliniks = Klinik.all
  end

  # GET /kliniks/1 or /kliniks/1.json
  def show
  end

  # GET /kliniks/new
  def new
    @klinik = Klinik.new
  end

  # GET /kliniks/1/edit
  def edit
  end

  # POST /kliniks or /kliniks.json
  def create
    @klinik = Klinik.new(klinik_params)

    respond_to do |format|
      if @klinik.save
        format.html { redirect_to klinik_url(@klinik), notice: "Klinik was successfully created." }
        format.json { render :show, status: :created, location: @klinik }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @klinik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kliniks/1 or /kliniks/1.json
  def update
    respond_to do |format|
      if @klinik.update(klinik_params)
        format.html { redirect_to klinik_url(@klinik), notice: "Klinik was successfully updated." }
        format.json { render :show, status: :ok, location: @klinik }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @klinik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kliniks/1 or /kliniks/1.json
  def destroy
    @klinik.destroy

    respond_to do |format|
      format.html { redirect_to kliniks_url, notice: "Klinik was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_klinik
      @klinik = Klinik.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def klinik_params
      params.require(:klinik).permit(:name, :address, :founding_date)
    end
end

class PatientCartsController < ApplicationController
  before_action :set_patient_cart, only: %i[ show edit update destroy ]

  # GET /patient_carts or /patient_carts.json
  def index
    @patient_carts = PatientCart.all
  end

  # GET /patient_carts/1 or /patient_carts/1.json
  def show
  end

  # GET /patient_carts/new
  def new
    @patient_cart = PatientCart.new
  end

  # GET /patient_carts/1/edit
  def edit
  end

  # POST /patient_carts or /patient_carts.json
  def create
    @patient_cart = PatientCart.new(patient_cart_params)

    respond_to do |format|
      if @patient_cart.save
        format.html { redirect_to patient_cart_url(@patient_cart), notice: "Patient cart was successfully created." }
        format.json { render :show, status: :created, location: @patient_cart }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patient_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_carts/1 or /patient_carts/1.json
  def update
    respond_to do |format|
      if @patient_cart.update(patient_cart_params)
        format.html { redirect_to patient_cart_url(@patient_cart), notice: "Patient cart was successfully updated." }
        format.json { render :show, status: :ok, location: @patient_cart }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patient_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_carts/1 or /patient_carts/1.json
  def destroy
    @patient_cart.destroy

    respond_to do |format|
      format.html { redirect_to patient_carts_url, notice: "Patient cart was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_cart
      @patient_cart = PatientCart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_cart_params
      params.require(:patient_cart).permit(:klinik, :doctor)
    end
end

class ReservationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_reservation, only: [:show, :edit, :update, :destroy, :processReservation]

  # GET /reservations
  # GET /reservations.json
  def index
    @filterrific = initialize_filterrific(
      Reservation,
      params[:filterrific],
      select_options: {
      }
    ) or return

    @reservations = @filterrific.find.page(params[:page])

    respond_to do |format|
      format.html
      format.js
    end

    rescue ActiveRecord::RecordNotFound => e
      # There is an issue with the persisted param_set. Reset it.
      redirect_to(reset_filterrific_url(format: :html)) and return
  end

  # GET /reservations/1
  # GET /reservations/1.json
  def show
  end

  # GET /reservations/new
  def new
    authorize Reservation
    @reservation = Reservation.new
    @reservation.reservation_drugs.build 
  end

  # GET /reservations/1/edit
  def edit
    authorize Reservation
  end

  # POST /reservations
  # POST /reservations.json
  def create
    authorize Reservation
    @reservation = Reservation.new(reservation_params)

    respond_to do |format|
      if @reservation.save
        format.html { redirect_to @reservation, notice: 'Rezervace byla úspěšně evidována.' }
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservations/1
  # PATCH/PUT /reservations/1.json
  def update
    authorize Reservation
    respond_to do |format|
      if @reservation.update(reservation_params)
        format.html { redirect_to @reservation, notice: 'Rezervace byla úspěšně upravena.' }
        format.json { render :show, status: :ok, location: @reservation }
      else
        format.html { render :edit }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    authorize Reservation
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to reservations_url, notice: 'Rezervace byla úspěšně zrušena.' }
      format.json { head :no_content }
    end
  end

  def processReservation
    authorize Reservation
    @reservation.destroy
    redirect_to new_sale_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:id, :branch_id,:customer, :date, reservation_drugs_attributes: [:id, :reservation_id, :drug_id, :amount, :_destroy])
    end
end

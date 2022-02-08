class SalesController < ApplicationController
  before_action :set_sale, only: [:show, :edit, :update, :destroy]
  include SalesHelper
  
  # GET /sales
  # GET /sales.json
  def index
    @sales = Sale.order(:created_at).page params[:page]
  end

  # GET /sales/1
  # GET /sales/1.json
  def show
  end

  # GET /sales/new
  def new
    authorize Sale
    @sale = Sale.new
    @sale.sale_drugs.build 
  end

  # GET /sales/1/edit
  def edit
    authorize Sale
  end

  # POST /sales
  # POST /sales.json
  def create
    authorize Sale
    @sale = Sale.new(sale_params)

    respond_to do |format|
      if @sale.save
        makeSale @sale
        format.html { redirect_to @sale, notice: 'Transakce byla úspěšně evidována.' }
        format.json { render :show, status: :created, location: @sale }
      else
        format.html { render :new }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales/1
  # PATCH/PUT /sales/1.json
  def update
    authorize Sale
    respond_to do |format|
      if @sale.update(sale_params)
        format.html { redirect_to @sale, notice: 'Transakce byla úspěšně upravena.' }
        format.json { render :show, status: :ok, location: @sale }
      else
        format.html { render :edit }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales/1
  # DELETE /sales/1.json
  def destroy
    authorize Sale
    revertSale @sale
    @sale.destroy
    respond_to do |format|
      format.html { redirect_to sales_url, notice: 'Transakce byla úspěšně smazána.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      @sale = Sale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_params
      params.require(:sale).permit(:branch_id, :insurer_id, :rc, sale_drugs_attributes: [:id, :sale_id, :drug_id, :amount, :_destroy])
    end
end

class OrdersController < ApplicationController
  include OrdersHelper
  skip_before_action :verify_authenticity_token, :only => :processOrder
  before_action :authenticate_user!
  before_action :set_order, only: [:show, :edit, :update, :destroy, :processOrder, :deprocessOrder]

  # GET /orders
  # GET /orders.json
  def index
    authorize Order
    @orders = Order.order(:dateOrdered).page params[:page]
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    authorize Order
  end

  # GET /orders/new
  def new
    authorize Order
    @order = Order.new
    @order.order_drugs.build 
  end

  # GET /orders/1/edit
  def edit
    authorize Order
  end

  def processOrder
    authorize Order, :edit?
    orderComplete @order.id
    redirect_to @order, notice: 'Objednávka byla úspěšně přijata.'
  end

  def deprocessOrder
    authorize Order, :edit?
    orderRevert @order.id
    redirect_to @order, notice: 'Přijetí objjdnávky bylo úspěšně stornováno.'
  end

  # POST /orders
  # POST /orders.json
  def create
    authorize Order
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Objednávka byla úspěšně evidována.'}
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    authorize Order
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Objednávka byla úspěšně upravena.'}
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    authorize Order
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Objednávka byla úspěšně smazána.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:id, :supplier_id, :dateOrdered, :pending, :branch_id, order_drugs_attributes: [:id, :order_id, :drug_id, :amount, :_destroy])
    end
end

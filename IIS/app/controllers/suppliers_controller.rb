class SuppliersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_supplier, only: [:show, :edit, :update, :destroy]

  # GET /suppliers
  # GET /suppliers.json
  def index
    authorize Supplier
    @suppliers = Supplier.order(:name).page params[:page]
  end

  # GET /suppliers/1
  # GET /suppliers/1.json
  def show
    authorize Supplier
  end

  # GET /suppliers/new
  def new
    authorize Supplier
    @supplier = Supplier.new
  end

  # GET /suppliers/1/edit
  def edit
    authorize Supplier
  end

  # POST /suppliers
  # POST /suppliers.json
  def create
    authorize Supplier
    @supplier = Supplier.new(supplier_params)

    respond_to do |format|
      if @supplier.save
        format.html { redirect_to suppliers_url, notice: 'Dodavatel byla úspěšně přidán.' }
        format.json { render :show, status: :created, location: @supplier }
      else
        format.html { render :new }
        format.json { render json: @supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suppliers/1
  # PATCH/PUT /suppliers/1.json
  def update
    authorize Supplier
    respond_to do |format|
      if @supplier.update(supplier_params)
        format.html { redirect_to suppliers_url, notice: 'Dodavatel byla úspěšně upraven.' }
        format.json { render :show, status: :ok, location: @supplier }
      else
        format.html { render :edit }
        format.json { render json: @supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suppliers/1
  # DELETE /suppliers/1.json
  def destroy
    authorize Supplier
    @supplier.destroy
    respond_to do |format|
      format.html { redirect_to suppliers_url, notice: 'Dodavatel byla úspěšně smazán.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplier
      @supplier = Supplier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supplier_params
      params.require(:supplier).permit(:name)
    end
end

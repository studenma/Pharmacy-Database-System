class DrugsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_drug, only: [:show, :edit, :update, :destroy]

  # GET /drugs
  # GET /drugs.json
  def index
    # @drugs = Drug.order(:name).page params[:page]

    @filterrific = initialize_filterrific(
      Drug,
      params[:filterrific],
      select_options: {
      }
    ) or return

    @drugs = @filterrific.find.page(params[:page])

    respond_to do |format|
      format.html
      format.js
    end

    rescue ActiveRecord::RecordNotFound => e
      # There is an issue with the persisted param_set. Reset it.
      redirect_to(reset_filterrific_url(format: :html)) and return
  end

  # GET /drugs/1
  # GET /drugs/1.json
  def show
    @branches = Branch.all
  end

  # GET /drugs/new
  def new
    authorize Drug
    @drug = Drug.new
  end

  # GET /drugs/1/edit
  def edit
    authorize Drug
  end

  # POST /drugs
  # POST /drugs.json
  def create
    authorize Drug
    @drug = Drug.new(drug_params)

    respond_to do |format|
      if @drug.save
        Branch.all.each do |branch|
          Available.create ({branch_id: branch.id, drug_id: @drug.id, amount: 0})        
        end
        format.html { redirect_to @drug, notice: 'Lék byl úspěšně přidán.' }
        format.json { render :show, status: :created, location: @drug }
      else
        format.html { render :new }
        format.json { render json: @drug.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drugs/1
  # PATCH/PUT /drugs/1.json
  def update
    authorize Drug
    respond_to do |format|
      if @drug.update(drug_params)
        format.html { redirect_to @drug, notice: 'Lék byl úspěšně upraven.' }
        format.json { render :show, status: :ok, location: @drug }
      else
        format.html { render :edit }
        format.json { render json: @drug.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drugs/1
  # DELETE /drugs/1.json
  def destroy
    authorize Drug
    @drug.destroy
    respond_to do |format|
      format.html { redirect_to drugs_url, notice: 'Lék byl úspěšně smazán.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drug
      @drug = Drug.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drug_params
      params.require(:drug).permit(:name, :filterrific, :price, :prescription, :bprice, :supplier_id)
    end
end

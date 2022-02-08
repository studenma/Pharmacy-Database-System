class BranchesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_branch, only: [:show, :edit, :update, :destroy]

  # GET /branches
  # GET /branches.json
  def index
    authorize Branch
    @branches = Branch.order(:address).page params[:page]
  end

  # GET /branches/1
  # GET /branches/1.json
  def show
    authorize Branch
    @users = User.where('branch_id = ?', @branch.id).page params[:page]
  end

  # GET /branches/new
  def new
    authorize Branch
    @branch = Branch.new
  end

  # GET /branches/1/edit
  def edit
    authorize Branch
  end

  # POST /branches
  # POST /branches.json
  def create
    authorize Branch
    @branch = Branch.new(branch_params)

    respond_to do |format|
      if @branch.save
        format.html { redirect_to branches_url, notice: 'Pobočka úspěšně vytvořena.' }
        format.json { render :show, status: :created, location: @branch }
      else
        format.html { render :new }
        format.json { render json: @branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /branches/1
  # PATCH/PUT /branches/1.json
  def update
    authorize Branch
    respond_to do |format|
      if @branch.update(branch_params)
        format.html { redirect_to branches_url, notice: 'Pobočka úspěšně upravena.' }
        format.json { render :show, status: :ok, location: @branch }
      else
        format.html { render :edit }
        format.json { render json: @branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /branches/1
  # DELETE /branches/1.json
  def destroy
    authorize Branch
    @branch.destroy
    respond_to do |format|
      format.html { redirect_to branches_url, notice: 'Pobočka úspěšně smazána.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_branch
      @branch = Branch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def branch_params
      params.require(:branch).permit(:address)
    end
end

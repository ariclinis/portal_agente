class DelegationsController < DashboardController
  before_action :set_delegation, only: %i[ show edit update destroy ]

  # GET /delegations or /delegations.json
  def index
    @delegations = Delegation.all
  end

  # GET /delegations/1 or /delegations/1.json
  def show
  end

  # GET /delegations/new
  def new
    @delegation = Delegation.new
  end

  # GET /delegations/1/edit
  def edit
  end

  # POST /delegations or /delegations.json
  def create
    @delegation = Delegation.new(delegation_params)

    respond_to do |format|
      if @delegation.save
        format.html { redirect_to @delegation, notice: "Delegation was successfully created." }
        format.json { render :show, status: :created, location: @delegation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @delegation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delegations/1 or /delegations/1.json
  def update
    respond_to do |format|
      if @delegation.update(delegation_params)
        format.html { redirect_to @delegation, notice: "Delegation was successfully updated." }
        format.json { render :show, status: :ok, location: @delegation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @delegation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delegations/1 or /delegations/1.json
  def destroy
    @delegation.destroy
    respond_to do |format|
      format.html { redirect_to delegations_url, notice: "Delegation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delegation
      @delegation = Delegation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def delegation_params
      params.require(:delegation).permit(:nome, :endereco, :tel, :email, :cp, :provincia, :municipio, :comuna, :status)
    end
end

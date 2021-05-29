class EmbarkationsController < DashboardController
  before_action :set_embarkation, only: %i[ show edit update destroy ]

  # GET /embarkations or /embarkations.json
  def index
    @embarkations = Embarkation.all
  end

  # GET /embarkations/1 or /embarkations/1.json
  def show
  end

  # GET /embarkations/new
  def new
    @embarkation = Embarkation.new
  end

  # GET /embarkations/1/edit
  def edit
  end

  # POST /embarkations or /embarkations.json
  def create
    @embarkation = Embarkation.new(embarkation_params)

    respond_to do |format|
      if @embarkation.save
        format.html { redirect_to @embarkation, notice: "Embarkation was successfully created." }
        format.json { render :show, status: :created, location: @embarkation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @embarkation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /embarkations/1 or /embarkations/1.json
  def update
    respond_to do |format|
      if @embarkation.update(embarkation_params)
        format.html { redirect_to @embarkation, notice: "Embarkation was successfully updated." }
        format.json { render :show, status: :ok, location: @embarkation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @embarkation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /embarkations/1 or /embarkations/1.json
  def destroy
    @embarkation.destroy
    respond_to do |format|
      format.html { redirect_to embarkations_url, notice: "Embarkation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_embarkation
      @embarkation = Embarkation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def embarkation_params
      params.require(:embarkation).permit(:nome, :matricula, :local_atracagem, :indicativo_chamada, :nr_imo, :data_contrucao, :estaleiro, :porto_registro, :bandeira_origem, :bandeira_actual, :tipo_embarcacao_id, :tipo_de_casco_id, :tipo_classificacao_id, :stado_da_embarcacao, :comprimento, :boca, :pontal, :tonelagem_bruto, :tonelagem_liquida, :lotacao, :nr_max_tripulante, :nr_min_tripulante, :capitao_id, :armador_id, :proprietario_id, :delegation_id, :status)
    end
end

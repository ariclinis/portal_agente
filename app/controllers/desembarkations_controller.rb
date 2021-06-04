class DesembarkationsController < DashboardController
  before_action :set_desembarkation, only: %i[ desatracagem show edit update destroy ]

  # GET /desembarkations or /desembarkations.json
  def index
    @desembarkations = Desembarkation.all
  end

  # GET /desembarkations/1 or /desembarkations/1.json
  def show
  end

  # GET /desembarkations/new
  def new
    @desembarkation = Desembarkation.new
    @embarkation = Embarkation.new
    if(params[:id_emb]) then
      @embarkation = Embarkation.find(params[:id_emb])
      @desembarkation.embarkation_id = @embarkation.id
    end
  end

  # GET /desembarkations/1/edit
  def edit
  end

  def desatracagem
    respond_to do |format|
      if @desembarkation.update(:data_saida=>params[:data_saida],:hora_saida=>params[:hora_saida], :status =>1)
        e = Embarkation.find(@desembarkation.embarkation_id)
        e.update(:status => 1)
        format.html { redirect_to @desembarkation, notice: "Desatracagem feita, aguardando validação." }
        format.json { render :show, status: :ok, location: @desembarkation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @desembarkation.errors, status: :unprocessable_entity }
      end
    end
  end
  # POST /desembarkations or /desembarkations.json
  def create
    @desembarkation = Desembarkation.new(desembarkation_params)

    respond_to do |format|
      if @desembarkation.save
        format.html { redirect_to @desembarkation, notice: "Desembarcação Criada." }
        format.json { render :show, status: :created, location: @desembarkation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @desembarkation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desembarkations/1 or /desembarkations/1.json
  def update
    respond_to do |format|
      if @desembarkation.update(desembarkation_params)
        format.html { redirect_to @desembarkation, notice: "Desembarcação Atualizada." }
        format.json { render :show, status: :ok, location: @desembarkation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @desembarkation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desembarkations/1 or /desembarkations/1.json
  def destroy
    @desembarkation.destroy
    respond_to do |format|
      format.html { redirect_to desembarkations_url, notice: "Desembarcação Eliminada." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desembarkation
      @desembarkation = Desembarkation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def desembarkation_params
      params.require(:desembarkation).permit(:embarkation_id, :n_movimento, :porto_origem, :porto_destino, :armador_id, :user, :email, :data_entrada, :hora_entrada, :data_saida, :hora_saida, :nome_comandante, :estadia_prev, :estadia_final, :nacionalida, :tipo_doc, :n_doc, :data_emissao, :data_validade, :status)
    end

    def desatracagem_params
      params.require(:desembarkation).permit(:data_saida, :hora_saida, :estadia_final)
    end
end

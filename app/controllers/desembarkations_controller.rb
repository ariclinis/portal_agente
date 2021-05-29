class DesembarkationsController < DashboardController
  before_action :set_desembarkation, only: %i[ show edit update destroy ]

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
  end

  # GET /desembarkations/1/edit
  def edit
  end

  # POST /desembarkations or /desembarkations.json
  def create
    @desembarkation = Desembarkation.new(desembarkation_params)

    respond_to do |format|
      if @desembarkation.save
        format.html { redirect_to @desembarkation, notice: "Desembarkation was successfully created." }
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
        format.html { redirect_to @desembarkation, notice: "Desembarkation was successfully updated." }
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
      format.html { redirect_to desembarkations_url, notice: "Desembarkation was successfully destroyed." }
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
end

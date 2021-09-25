class ArmadorsController < DashboardController
  before_action :set_armador, only: %i[ show edit update destroy ]

  # GET /armadors or /armadors.json
  def index
    @armadors = Armador.all
  end

  # GET /armadors/1 or /armadors/1.json
  def show
  end

  # GET /armadors/new
  def new
    @armador = Armador.new
  end

  # GET /armadors/1/edit
  def edit
  end

  # POST /armadors or /armadors.json
  def create
    @armador = Armador.new(armador_params)

    respond_to do |format|
      if @armador.save
        format.html { redirect_to @armador, notice: "Armador was successfully created." }
        format.json { render :show, status: :created, location: @armador }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @armador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /armadors/1 or /armadors/1.json
  def update
    respond_to do |format|
      if @armador.update(armador_params)
        format.html { redirect_to @armador, notice: "Armador was successfully updated." }
        format.json { render :show, status: :ok, location: @armador }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @armador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /armadors/1 or /armadors/1.json
  def destroy
    @armador.destroy
    respond_to do |format|
      format.html { redirect_to armadors_url, notice: "Armador was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_armador
      @armador = Armador.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def armador_params
      params.require(:armador).permit(:nome, :tel, :agente, :pais, :morada, :status)
    end
end

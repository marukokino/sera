class FabricasController < ApplicationController
  before_action :set_fabrica, only: [:show, :edit, :update, :destroy]

  # GET /fabricas
  # GET /fabricas.json
  def index
    @fabricas = Fabrica.all
  end

  # GET /fabricas/1
  # GET /fabricas/1.json
  def show
 @pdestaf = Mercadorium.where fabricante: @fabrica.name

  end

  # GET /fabricas/new
  def new
    @fabrica = Fabrica.new
  end

  # GET /fabricas/1/edit
  def edit
  end

  # POST /fabricas
  # POST /fabricas.json
  def create
    @fabrica = Fabrica.new(fabrica_params)

    respond_to do |format|
      if @fabrica.save
        format.html { redirect_to @fabrica, notice: 'Fabrica was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fabrica }
      else
        format.html { render action: 'new' }
        format.json { render json: @fabrica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fabricas/1
  # PATCH/PUT /fabricas/1.json
  def update
    respond_to do |format|
      if @fabrica.update(fabrica_params)
        format.html { redirect_to @fabrica, notice: 'Fabrica was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fabrica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fabricas/1
  # DELETE /fabricas/1.json
  def destroy
    @fabrica.destroy
    respond_to do |format|
      format.html { redirect_to fabricas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fabrica
      @fabrica = Fabrica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fabrica_params
      params.require(:fabrica).permit(:name, :cidade, :produtoprincipal)
    end
end

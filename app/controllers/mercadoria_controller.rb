class MercadoriaController < ApplicationController
  before_action :set_mercadorium, only: [:show, :edit, :update, :destroy]

  # GET /mercadoria
  # GET /mercadoria.json
  def index
    @mercadoria = Mercadorium.all
  end

  # GET /mercadoria/1
  # GET /mercadoria/1.json
  def show


  end

  # GET /mercadoria/new
  def new
    @mercadorium = Mercadorium.new
  end

  # GET /mercadoria/1/edit
  def edit
  end

  # POST /mercadoria
  # POST /mercadoria.json
  def create
    @mercadorium = Mercadorium.new(mercadorium_params)

    respond_to do |format|
      if @mercadorium.save
        format.html { redirect_to @mercadorium, notice: 'Mercadorium was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mercadorium }
      else
        format.html { render action: 'new' }
        format.json { render json: @mercadorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mercadoria/1
  # PATCH/PUT /mercadoria/1.json
  def update
    respond_to do |format|
      if @mercadorium.update(mercadorium_params)
        format.html { redirect_to @mercadorium, notice: 'Mercadorium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mercadorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mercadoria/1
  # DELETE /mercadoria/1.json
  def destroy
    @mercadorium.destroy
    respond_to do |format|
      format.html { redirect_to mercadoria_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mercadorium
      @mercadorium = Mercadorium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mercadorium_params
      params.require(:mercadorium).permit(:nome, :descricao, :preco, :precoumcbm, :precomeiodevinte, :altura, :largura, :comprimento, :precofrete, :imposto, :precodevenda, :precodaconco, :vendamensal, :outroscustosdevenda)
    end
end

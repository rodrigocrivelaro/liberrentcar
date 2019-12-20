class TipoAutosController < ApplicationController
  before_action :set_tipo_auto, only: [:show, :edit, :update, :destroy]

  # GET /tipo_autos
  # GET /tipo_autos.json
  def index
    @tipo_autos = TipoAuto.all
  end

  # GET /tipo_autos/1
  # GET /tipo_autos/1.json
  def show
  end

  # GET /tipo_autos/new
  def new
    @tipo_auto = TipoAuto.new
  end

  # GET /tipo_autos/1/edit
  def edit
  end

  # POST /tipo_autos
  # POST /tipo_autos.json
  def create
    @tipo_auto = TipoAuto.new(tipo_auto_params)

    respond_to do |format|
      if @tipo_auto.save
        format.html { redirect_to @tipo_auto, notice: 'Tipo auto was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_auto }
      else
        format.html { render :new }
        format.json { render json: @tipo_auto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_autos/1
  # PATCH/PUT /tipo_autos/1.json
  def update
    respond_to do |format|
      if @tipo_auto.update(tipo_auto_params)
        format.html { redirect_to @tipo_auto, notice: 'Tipo auto was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_auto }
      else
        format.html { render :edit }
        format.json { render json: @tipo_auto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_autos/1
  # DELETE /tipo_autos/1.json
  def destroy
    @tipo_auto.destroy
    respond_to do |format|
      format.html { redirect_to tipo_autos_url, notice: 'Tipo auto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_auto
      @tipo_auto = TipoAuto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_auto_params
      params.require(:tipo_auto).permit(:nome)
    end
end

class HabilitacaosController < ApplicationController
  before_action :set_habilitacao, only: [:show, :edit, :update, :destroy]

  # GET /habilitacaos
  # GET /habilitacaos.json
  def index
    @habilitacaos = Habilitacao.all
  end

  # GET /habilitacaos/1
  # GET /habilitacaos/1.json
  def show
  end

  # GET /habilitacaos/new
  def new
    @habilitacao = Habilitacao.new
  end

  # GET /habilitacaos/1/edit
  def edit
  end

  # POST /habilitacaos
  # POST /habilitacaos.json
  def create
    @habilitacao = Habilitacao.new(habilitacao_params)

    respond_to do |format|
      if @habilitacao.save
        format.html { redirect_to @habilitacao, notice: 'Habilitacao was successfully created.' }
        format.json { render :show, status: :created, location: @habilitacao }
      else
        format.html { render :new }
        format.json { render json: @habilitacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /habilitacaos/1
  # PATCH/PUT /habilitacaos/1.json
  def update
    respond_to do |format|
      if @habilitacao.update(habilitacao_params)
        format.html { redirect_to @habilitacao, notice: 'Habilitacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @habilitacao }
      else
        format.html { render :edit }
        format.json { render json: @habilitacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /habilitacaos/1
  # DELETE /habilitacaos/1.json
  def destroy
    @habilitacao.destroy
    respond_to do |format|
      format.html { redirect_to habilitacaos_url, notice: 'Habilitacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_habilitacao
      @habilitacao = Habilitacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def habilitacao_params
      params.require(:habilitacao).permit(:pessoa_id, :numero, :modalidade, :validade)
    end
end

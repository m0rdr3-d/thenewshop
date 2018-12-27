class MdmasController < ApplicationController
  before_action :set_mdma, only: [:show, :edit, :update, :destroy]

  # GET /mdmas
  # GET /mdmas.json
  def index
    @mdmas = Mdma.all
    @btc_price_table = Cryptocompare::Price.find('USD', 'BTC')
    @btc_price = @btc_price_table["USD"]["BTC"]
  end

  # GET /mdmas/1
  # GET /mdmas/1.json
  def show
  end

  # GET /mdmas/new
  def new
    @mdma = Mdma.new
  end

  # GET /mdmas/1/edit
  def edit
  end

  # POST /mdmas
  # POST /mdmas.json
  def create
    @mdma = Mdma.new(mdma_params)

    respond_to do |format|
      if @mdma.save
        format.html { redirect_to @mdma, notice: 'Mdma was successfully created.' }
        format.json { render :show, status: :created, location: @mdma }
      else
        format.html { render :new }
        format.json { render json: @mdma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mdmas/1
  # PATCH/PUT /mdmas/1.json
  def update
    respond_to do |format|
      if @mdma.update(mdma_params)
        format.html { redirect_to @mdma, notice: 'Mdma was successfully updated.' }
        format.json { render :show, status: :ok, location: @mdma }
      else
        format.html { render :edit }
        format.json { render json: @mdma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mdmas/1
  # DELETE /mdmas/1.json
  def destroy
    @mdma.destroy
    respond_to do |format|
      format.html { redirect_to mdmas_url, notice: 'Mdma was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mdma
      @mdma = Mdma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mdma_params
      params.require(:mdma).permit(:name, :price, :description, :avatar)
    end
end

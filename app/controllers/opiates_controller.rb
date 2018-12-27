class OpiatesController < ApplicationController
  before_action :set_opiate, only: [:show, :edit, :update, :destroy]

  # GET /opiates
  # GET /opiates.json
  def index
    @opiates = Opiate.all
    @btc_price_table = Cryptocompare::Price.find('USD', 'BTC')
    @btc_price = @btc_price_table["USD"]["BTC"]
  end

  # GET /opiates/1
  # GET /opiates/1.json
  def show
  end

  # GET /opiates/new
  def new
    @opiate = Opiate.new
  end

  # GET /opiates/1/edit
  def edit
  end

  # POST /opiates
  # POST /opiates.json
  def create
    @opiate = Opiate.new(opiate_params)

    respond_to do |format|
      if @opiate.save
        format.html { redirect_to @opiate, notice: 'Opiate was successfully created.' }
        format.json { render :show, status: :created, location: @opiate }
      else
        format.html { render :new }
        format.json { render json: @opiate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opiates/1
  # PATCH/PUT /opiates/1.json
  def update
    respond_to do |format|
      if @opiate.update(opiate_params)
        format.html { redirect_to @opiate, notice: 'Opiate was successfully updated.' }
        format.json { render :show, status: :ok, location: @opiate }
      else
        format.html { render :edit }
        format.json { render json: @opiate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opiates/1
  # DELETE /opiates/1.json
  def destroy
    @opiate.destroy
    respond_to do |format|
      format.html { redirect_to opiates_url, notice: 'Opiate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opiate
      @opiate = Opiate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opiate_params
      params.require(:opiate).permit(:name, :price, :description, :avatar)
    end
end

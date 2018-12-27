class LsdsController < ApplicationController
  before_action :set_lsd, only: [:show, :edit, :update, :destroy]

  # GET /lsds
  # GET /lsds.json
  def index
    @lsds = Lsd.all
    @btc_price_table = Cryptocompare::Price.find('USD', 'BTC')
    @btc_price = @btc_price_table["USD"]["BTC"]
  end

  # GET /lsds/1
  # GET /lsds/1.json
  def show
  end

  # GET /lsds/new
  def new
    @lsd = Lsd.new
  end

  # GET /lsds/1/edit
  def edit
  end

  # POST /lsds
  # POST /lsds.json
  def create
    @lsd = Lsd.new(lsd_params)

    respond_to do |format|
      if @lsd.save
        format.html { redirect_to @lsd, notice: 'Lsd was successfully created.' }
        format.json { render :show, status: :created, location: @lsd }
      else
        format.html { render :new }
        format.json { render json: @lsd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lsds/1
  # PATCH/PUT /lsds/1.json
  def update
    respond_to do |format|
      if @lsd.update(lsd_params)
        format.html { redirect_to @lsd, notice: 'Lsd was successfully updated.' }
        format.json { render :show, status: :ok, location: @lsd }
      else
        format.html { render :edit }
        format.json { render json: @lsd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lsds/1
  # DELETE /lsds/1.json
  def destroy
    @lsd.destroy
    respond_to do |format|
      format.html { redirect_to lsds_url, notice: 'Lsd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lsd
      @lsd = Lsd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lsd_params
      params.require(:lsd).permit(:name, :price, :description, :avatar)
    end
end

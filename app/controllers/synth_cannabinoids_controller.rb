class SynthCannabinoidsController < ApplicationController
  before_action :set_synth_cannabinoid, only: [:show, :edit, :update, :destroy]

  # GET /synth_cannabinoids
  # GET /synth_cannabinoids.json
  def index
    @synth_cannabinoids = SynthCannabinoid.all
    @btc_price_table = Cryptocompare::Price.find('USD', 'BTC')
    @btc_price = @btc_price_table["USD"]["BTC"]
  end

  # GET /synth_cannabinoids/1
  # GET /synth_cannabinoids/1.json
  def show
  end

  # GET /synth_cannabinoids/new
  def new
    @synth_cannabinoid = SynthCannabinoid.new
  end

  # GET /synth_cannabinoids/1/edit
  def edit
  end

  # POST /synth_cannabinoids
  # POST /synth_cannabinoids.json
  def create
    @synth_cannabinoid = SynthCannabinoid.new(synth_cannabinoid_params)

    respond_to do |format|
      if @synth_cannabinoid.save
        format.html { redirect_to @synth_cannabinoid, notice: 'Synth cannabinoid was successfully created.' }
        format.json { render :show, status: :created, location: @synth_cannabinoid }
      else
        format.html { render :new }
        format.json { render json: @synth_cannabinoid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /synth_cannabinoids/1
  # PATCH/PUT /synth_cannabinoids/1.json
  def update
    respond_to do |format|
      if @synth_cannabinoid.update(synth_cannabinoid_params)
        format.html { redirect_to @synth_cannabinoid, notice: 'Synth cannabinoid was successfully updated.' }
        format.json { render :show, status: :ok, location: @synth_cannabinoid }
      else
        format.html { render :edit }
        format.json { render json: @synth_cannabinoid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /synth_cannabinoids/1
  # DELETE /synth_cannabinoids/1.json
  def destroy
    @synth_cannabinoid.destroy
    respond_to do |format|
      format.html { redirect_to synth_cannabinoids_url, notice: 'Synth cannabinoid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_synth_cannabinoid
      @synth_cannabinoid = SynthCannabinoid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def synth_cannabinoid_params
      params.require(:synth_cannabinoid).permit(:name, :price, :description, :avatar)
    end
end

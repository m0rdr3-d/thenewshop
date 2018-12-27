class CocainesController < ApplicationController
  before_action :set_cocaine, only: [:show, :edit, :update, :destroy]

  # GET /cocaines
  # GET /cocaines.json
  def index
    @cocaines = Cocaine.all
    @btc_price_table = Cryptocompare::Price.find('USD', 'BTC')
    @btc_price = @btc_price_table["USD"]["BTC"]
  end

  # GET /cocaines/1
  # GET /cocaines/1.json
  def show
  end

  # GET /cocaines/new
  def new
    @cocaine = Cocaine.new
  end

  # GET /cocaines/1/edit
  def edit
  end

  # POST /cocaines
  # POST /cocaines.json
  def create
    @cocaine = Cocaine.new(cocaine_params)

    respond_to do |format|
      if @cocaine.save
        format.html { redirect_to @cocaine, notice: 'Cocaine was successfully created.' }
        format.json { render :show, status: :created, location: @cocaine }
      else
        format.html { render :new }
        format.json { render json: @cocaine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cocaines/1
  # PATCH/PUT /cocaines/1.json
  def update
    respond_to do |format|
      if @cocaine.update(cocaine_params)
        format.html { redirect_to @cocaine, notice: 'Cocaine was successfully updated.' }
        format.json { render :show, status: :ok, location: @cocaine }
      else
        format.html { render :edit }
        format.json { render json: @cocaine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cocaines/1
  # DELETE /cocaines/1.json
  def destroy
    @cocaine.destroy
    respond_to do |format|
      format.html { redirect_to cocaines_url, notice: 'Cocaine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cocaine
      @cocaine = Cocaine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cocaine_params
      params.require(:cocaine).permit(:name, :price, :description, :avatar)
    end
end

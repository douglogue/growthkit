class PromoBarsController < ApplicationController
  before_action :set_promo_bar, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:show]

  # GET /promo_bars
  # GET /promo_bars.json
  def index
    @promo_bars = current_user.promo_bars.all
  end

  # GET /promo_bars/1
  # GET /promo_bars/1.json
  def show
  end

  # GET /promo_bars/new
  def new
    # @promo_bar = PromoBar.new
    @promo_bar = current_user.promo_bars.build
  end

  # GET /promo_bars/1/edit
  def edit
  end

  # POST /promo_bars
  # POST /promo_bars.json
  def create
    @promo_bar = current_user.promo_bars.build(promo_bar_params)
    respond_to do |format|
      if @promo_bar.save
        format.html { redirect_to @promo_bar, notice: 'Promo bar was successfully created.' }
        format.json { render :show, status: :created, location: @promo_bar }
      else
        format.html { render :new }
        format.json { render json: @promo_bar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promo_bars/1
  # PATCH/PUT /promo_bars/1.json
  def update
    respond_to do |format|
      if @promo_bar.update(promo_bar_params)
        format.html { redirect_to @promo_bar, notice: 'Promo bar was successfully updated.' }
        format.json { render :show, status: :ok, location: @promo_bar }
      else
        format.html { render :edit }
        format.json { render json: @promo_bar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promo_bars/1
  # DELETE /promo_bars/1.json
  def destroy
    @promo_bar.destroy
    respond_to do |format|
      format.html { redirect_to promo_bars_url, notice: 'Promo bar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promo_bar
      @promo_bar = PromoBar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promo_bar_params
      params.require(:promo_bar).permit(:title, :headline, :link, :user_id)
    end
end

class LandingsController < ApplicationController
  before_action :set_landing, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:show]

  before_filter :initialize_lead

  def initialize_lead
    @lead = Lead.new
  end
  
  # GET /landings
  # GET /landings.json
  def index
    @landings = current_user.landings.all
  end

  # GET /landings/1
  # GET /landings/1.json
  def show
    render layout: 'user_landings'
  end

  def lead
    @lead = Lead.new
  end

  # GET /landings/new
  def new
    @landing = current_user.landings.build
  end

  # GET /landings/1/edit
  def edit
  end

  # POST /landings
  # POST /landings.json
  def create
    @landing = current_user.landings.build(landing_params)

    respond_to do |format|
      if @landing.save
        format.html { redirect_to @landing, notice: 'Landing was successfully created.' }
        format.json { render :show, status: :created, location: @landing }
      else
        format.html { render :new }
        format.json { render json: @landing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /landings/1
  # PATCH/PUT /landings/1.json
  def update
    respond_to do |format|
      if @landing.update(landing_params)
        format.html { redirect_to @landing, notice: 'Landing was successfully updated.' }
        format.json { render :show, status: :ok, location: @landing }
      else
        format.html { render :edit }
        format.json { render json: @landing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /landings/1
  # DELETE /landings/1.json
  def destroy
    @landing.destroy
    respond_to do |format|
      format.html { redirect_to landings_url, notice: 'Landing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_landing
      @landing = Landing.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def landing_params
      params.require(:landing).permit(:title, :subtitle, :slug, :hero_image, :logo)
    end
end

class SportsController < ApplicationController
  before_action :set_sport, only: [:show, :update, :destroy]

  # GET /sports or /sports.json
  def index
    @sports = Sport.all

    render json: @sports
  end

  # GET /sports/1 or /sports/1.json
  def show
    render json: @sport
  end

  # POST /sports or /sports.json
  def create
    @sport = Sport.new(sport_params)

    if @sport.save
      render json: @sport, status: :created, location: @sport
    else
      render json: @sport.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sports/1 or /sports/1.json
  def update
    if @sport.update(sport_params)
      render json: @sport
    else
      render json: @sport.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sports/1 or /sports/1.json
  def destroy
    @sport.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sport
      @sport = Sport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sport_params
      params.require(:sport).permit(:name)
    end
end

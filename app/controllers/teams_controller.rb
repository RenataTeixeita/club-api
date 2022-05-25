class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :update, :destroy]

  # GET /teams or /teams.json
  def index
    @teams = Team.all

    render json: @teams
  end

  # GET /teams/1 or /teams/1.json
  def show
    render json: @teams
  end

  # GET /teams/new
  # def new
  #   @team = Team.new
  # end

  # GET /teams/1/edit
  # def edit
  # end

  # POST /teams or /teams.json
  def create
    @team = Team.new(team_params)

    if @team.save
      render json: @team, status: :created, location: @team
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teams/1 or /teams/1.json
  def update
    if @team.update(team_params)
      render json: @team
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # DELETE /teams/1 or /teams/1.json
  def destroy
    @team.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_params
      params.require(:team).permit(:userId, :sportId)
    end
end

class TeamsController < ApplicationController
  before_action :set_team, only: %i[ show update destroy ]

  # GET /teams
  def index
    @teams = Team.all

    render json: @teams
  end

  # GET /teams/1
  def show
    render json: @team
  end

  # POST /teams
  def create
    @team = Team.new(team_params)

    if @team.save
      render json: @team, status: :created, location: @team
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teams/1
  def update
    if @team.update(team_params)
      render json: @team
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # DELETE /teams/1
  def destroy
    @team.destroy
  end

  # generate player /teams/id/generate_player
  def generate_player
    @player = Player.new(player_params)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_params
      params.require(:team).permit(:university_name, :nickname, :conference_id)
    end

    def player_params
      params.require(:player).permit(:first_name, :last_name, :year, :shooting, :playmaking, :rebounding, :defense, :physical, :team_id)
    end
end

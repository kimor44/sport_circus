class SportShowsController < ApplicationController

  before_action :set_sport_show, only: [:show, :edit, :update, :destroy]
  def index
    @sportShow = SportShow.all
  end

  def show
  end

  def edit
  end

  def update
    if @sportShow.update(sport_show_params)
      redirect_to sport_shows_index_url, notice: 'Le show a bien été modifié'
    else
      render :edit
    end
  end

  def new
    @sportShow = SportShow.new
  end

  def create
    @sportShow = SportShow.new
    if @sportShow.update(sport_show_params)
      redirect_to sport_shows_index_url, notice: 'Le show a bien été ajouté'
    else
      render :new
    end
  end

  def destroy
    @sportShow.destroy
    redirect_to sport_shows_index_url, notice: 'Le show a bien été supprimé'
  end

  private

  def set_sport_show
    @sportShow = SportShow.find(params[:id])
  end

  def sport_show_params
    params.require(:sport_show).permit(:name, :location, :picture, :description, :slug)
  end
end

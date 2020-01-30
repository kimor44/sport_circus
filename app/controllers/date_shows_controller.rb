class DateShowsController < ApplicationController
  before_action :set_date_show, only: [:show, :edit, :update, :destroy]

  # GET /date_shows
  # GET /date_shows.json
  def index
    @date_shows = DateShow.includes(:sport_show).all
  end

  # GET /date_shows/1
  # GET /date_shows/1.json
  def show
  end

  # GET /date_shows/new
  def new
    @date_show = DateShow.new
    @sport_shows = SportShow.all
  end

  # GET /date_shows/1/edit
  def edit
    @date_shows = DateShow.all
    @sport_shows = SportShow.all
  end

  # POST /date_shows
  # POST /date_shows.json
  def create
    @date_show = DateShow.new(date_show_params)

    respond_to do |format|
      if @date_show.save
        format.html { redirect_to @date_show, notice: 'Date show was successfully created.' }
        format.json { render :show, status: :created, location: @date_show }
      else
        format.html { render :new }
        format.json { render json: @date_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /date_shows/1
  # PATCH/PUT /date_shows/1.json
  def update
    respond_to do |format|
      if @date_show.update(date_show_params)
        format.html { redirect_to @date_show, notice: 'Date show was successfully updated.' }
        format.json { render :show, status: :ok, location: @date_show }
      else
        format.html { render :edit }
        format.json { render json: @date_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /date_shows/1
  # DELETE /date_shows/1.json
  def destroy
    @date_show.destroy
    respond_to do |format|
      format.html { redirect_to date_shows_url, notice: 'Date show was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date_show
      @date_show = DateShow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def date_show_params
      params.require(:date_show).permit(:date, :sport_show_id)
    end
end

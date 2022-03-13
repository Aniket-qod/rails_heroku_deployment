class VideoThemesController < ApplicationController
  before_action :set_video_theme, only: %i[ show edit update destroy ]

  # GET /video_themes or /video_themes.json
  def index
    @video_themes = VideoTheme.all
  end

  # GET /video_themes/1 or /video_themes/1.json
  def show
  end

  # GET /video_themes/new
  def new
    @video_theme = VideoTheme.new
  end

  # GET /video_themes/1/edit
  def edit
  end

  # POST /video_themes or /video_themes.json
  def create
    @video_theme = VideoTheme.new(video_theme_params)

    respond_to do |format|
      if @video_theme.save
        format.html { redirect_to video_theme_url(@video_theme), notice: "Video theme was successfully created." }
        format.json { render :show, status: :created, location: @video_theme }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @video_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_themes/1 or /video_themes/1.json
  def update
    respond_to do |format|
      if @video_theme.update(video_theme_params)
        format.html { redirect_to video_theme_url(@video_theme), notice: "Video theme was successfully updated." }
        format.json { render :show, status: :ok, location: @video_theme }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @video_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_themes/1 or /video_themes/1.json
  def destroy
    @video_theme.destroy

    respond_to do |format|
      format.html { redirect_to video_themes_url, notice: "Video theme was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_theme
      @video_theme = VideoTheme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def video_theme_params
      params.require(:video_theme).permit(:video, :status)
    end
end

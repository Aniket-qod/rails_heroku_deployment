class CartThemesController < ApplicationController
  before_action :set_cart_theme, only: %i[ show edit update destroy ]

  # GET /cart_themes or /cart_themes.json
  def index
    @cart_themes = CartTheme.all
  end

  # GET /cart_themes/1 or /cart_themes/1.json
  def show
  end

  # GET /cart_themes/new
  def new
    @cart_theme = CartTheme.new
  end

  # GET /cart_themes/1/edit
  def edit
  end

  # POST /cart_themes or /cart_themes.json
  def create
    @cart_theme = CartTheme.new(cart_theme_params)

    respond_to do |format|
      if @cart_theme.save
        format.html { redirect_to cart_theme_url(@cart_theme), notice: "Cart theme was successfully created." }
        format.json { render :show, status: :created, location: @cart_theme }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cart_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cart_themes/1 or /cart_themes/1.json
  def update
    respond_to do |format|
      if @cart_theme.update(cart_theme_params)
        format.html { redirect_to cart_theme_url(@cart_theme), notice: "Cart theme was successfully updated." }
        format.json { render :show, status: :ok, location: @cart_theme }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cart_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cart_themes/1 or /cart_themes/1.json
  def destroy
    @cart_theme.destroy

    respond_to do |format|
      format.html { redirect_to cart_themes_url, notice: "Cart theme was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart_theme
      @cart_theme = CartTheme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cart_theme_params
      params.require(:cart_theme).permit(:theme, :status)
    end
end

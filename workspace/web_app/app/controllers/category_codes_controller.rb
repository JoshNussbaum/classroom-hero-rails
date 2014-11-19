class CategoryCodesController < ApplicationController
  before_action :set_category_code, only: [:show, :edit, :update, :destroy]

  # GET /category_codes
  # GET /category_codes.json
  def index
    @category_codes = CategoryCode.all
  end

  # GET /category_codes/1
  # GET /category_codes/1.json
  def show
  end

  # GET /category_codes/new
  def new
    @category_code = CategoryCode.new
  end

  # GET /category_codes/1/edit
  def edit
  end

  # POST /category_codes
  # POST /category_codes.json
  def create
    @category_code = CategoryCode.new(category_code_params)

    respond_to do |format|
      if @category_code.save
        format.html { redirect_to @category_code, notice: 'Category code was successfully created.' }
        format.json { render :show, status: :created, location: @category_code }
      else
        format.html { render :new }
        format.json { render json: @category_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_codes/1
  # PATCH/PUT /category_codes/1.json
  def update
    respond_to do |format|
      if @category_code.update(category_code_params)
        format.html { redirect_to @category_code, notice: 'Category code was successfully updated.' }
        format.json { render :show, status: :ok, location: @category_code }
      else
        format.html { render :edit }
        format.json { render json: @category_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_codes/1
  # DELETE /category_codes/1.json
  def destroy
    @category_code.destroy
    respond_to do |format|
      format.html { redirect_to category_codes_url, notice: 'Category code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_code
      @category_code = CategoryCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_code_params
      params.require(:category_code).permit(:code, :category, :categoryType)
    end
end

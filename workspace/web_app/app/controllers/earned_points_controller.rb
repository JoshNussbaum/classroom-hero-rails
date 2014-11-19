class EarnedPointsController < ApplicationController
  before_action :set_earned_point, only: [:show, :edit, :update, :destroy]

  # GET /earned_points
  # GET /earned_points.json
  def index
    @earned_points = EarnedPoint.all
  end

  # GET /earned_points/1
  # GET /earned_points/1.json
  def show
  end

  # GET /earned_points/new
  def new
    @earned_point = EarnedPoint.new
  end

  # GET /earned_points/1/edit
  def edit
  end

  # POST /earned_points
  # POST /earned_points.json
  def create
    @earned_point = EarnedPoint.new(earned_point_params)

    respond_to do |format|
      if @earned_point.save
        format.html { redirect_to @earned_point, notice: 'Earned point was successfully created.' }
        format.json { render :show, status: :created, location: @earned_point }
      else
        format.html { render :new }
        format.json { render json: @earned_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /earned_points/1
  # PATCH/PUT /earned_points/1.json
  def update
    respond_to do |format|
      if @earned_point.update(earned_point_params)
        format.html { redirect_to @earned_point, notice: 'Earned point was successfully updated.' }
        format.json { render :show, status: :ok, location: @earned_point }
      else
        format.html { render :edit }
        format.json { render json: @earned_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /earned_points/1
  # DELETE /earned_points/1.json
  def destroy
    @earned_point.destroy
    respond_to do |format|
      format.html { redirect_to earned_points_url, notice: 'Earned point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_earned_point
      @earned_point = EarnedPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def earned_point_params
      params.require(:earned_point).permit(:earnId, :category_code, :earnTime)
    end
end

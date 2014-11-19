class StudentClassMatchesController < ApplicationController
  before_action :set_student_class_match, only: [:show, :edit, :update, :destroy]

  # GET /student_class_matches
  # GET /student_class_matches.json
  def index
    @student_class_matches = StudentClassMatch.all
  end

  # GET /student_class_matches/1
  # GET /student_class_matches/1.json
  def show
  end

  # GET /student_class_matches/new
  def new
    @student_class_match = StudentClassMatch.new
  end

  # GET /student_class_matches/1/edit
  def edit
  end

  # POST /student_class_matches
  # POST /student_class_matches.json
  def create
    @student_class_match = StudentClassMatch.new(student_class_match_params)

    respond_to do |format|
      if @student_class_match.save
        format.html { redirect_to @student_class_match, notice: 'Student class match was successfully created.' }
        format.json { render :show, status: :created, location: @student_class_match }
      else
        format.html { render :new }
        format.json { render json: @student_class_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_class_matches/1
  # PATCH/PUT /student_class_matches/1.json
  def update
    respond_to do |format|
      if @student_class_match.update(student_class_match_params)
        format.html { redirect_to @student_class_match, notice: 'Student class match was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_class_match }
      else
        format.html { render :edit }
        format.json { render json: @student_class_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_class_matches/1
  # DELETE /student_class_matches/1.json
  def destroy
    @student_class_match.destroy
    respond_to do |format|
      format.html { redirect_to student_class_matches_url, notice: 'Student class match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_class_match
      @student_class_match = StudentClassMatch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_class_match_params
      params.require(:student_class_match).permit(:sid, :cid)
    end
end

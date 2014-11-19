class StudentUsersController < ApplicationController
  before_action :set_student_user, only: [:show, :edit, :update, :destroy]

  # GET /student_users
  # GET /student_users.json
  def index
    @student_users = StudentUser.all
  end

  # GET /student_users/1
  # GET /student_users/1.json
  def show
  end

  # GET /student_users/new
  def new
    @student_user = StudentUser.new
  end

  # GET /student_users/1/edit
  def edit
  end

  # POST /student_users
  # POST /student_users.json
  def create
    @student_user = StudentUser.new(student_user_params)

    respond_to do |format|
      if @student_user.save
        format.html { redirect_to @student_user, notice: 'Student user was successfully created.' }
        format.json { render :show, status: :created, location: @student_user }
      else
        format.html { render :new }
        format.json { render json: @student_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_users/1
  # PATCH/PUT /student_users/1.json
  def update
    respond_to do |format|
      if @student_user.update(student_user_params)
        format.html { redirect_to @student_user, notice: 'Student user was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_user }
      else
        format.html { render :edit }
        format.json { render json: @student_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_users/1
  # DELETE /student_users/1.json
  def destroy
    @student_user.destroy
    respond_to do |format|
      format.html { redirect_to student_users_url, notice: 'Student user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_user
      @student_user = StudentUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_user_params
      params.require(:student_user).permit(:totalcoins, :currentcoins, :lvl, :progress, :lvlUpAmount)
    end
end

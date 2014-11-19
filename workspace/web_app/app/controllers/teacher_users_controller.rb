class TeacherUsersController < ApplicationController
  before_action :set_teacher_user, only: [:show, :edit, :update, :destroy]

  # GET /teacher_users
  # GET /teacher_users.json
  def index
    @teacher_users = TeacherUser.all
  end

  # GET /teacher_users/1
  # GET /teacher_users/1.json
  def show
  end

  # GET /teacher_users/new
  def new
    @teacher_user = TeacherUser.new
  end

  # GET /teacher_users/1/edit
  def edit
  end

  # POST /teacher_users
  # POST /teacher_users.json
  def create
    @teacher_user = TeacherUser.new(teacher_user_params)

    respond_to do |format|
      if @teacher_user.save
        format.html { redirect_to @teacher_user, notice: 'Teacher user was successfully created.' }
        format.json { render :show, status: :created, location: @teacher_user }
      else
        format.html { render :new }
        format.json { render json: @teacher_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_users/1
  # PATCH/PUT /teacher_users/1.json
  def update
    respond_to do |format|
      if @teacher_user.update(teacher_user_params)
        format.html { redirect_to @teacher_user, notice: 'Teacher user was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher_user }
      else
        format.html { render :edit }
        format.json { render json: @teacher_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_users/1
  # DELETE /teacher_users/1.json
  def destroy
    @teacher_user.destroy
    respond_to do |format|
      format.html { redirect_to teacher_users_url, notice: 'Teacher user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_user
      @teacher_user = TeacherUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_user_params
      params.require(:teacher_user).permit(:coins, :leagueId, :hasStamps)
    end
end

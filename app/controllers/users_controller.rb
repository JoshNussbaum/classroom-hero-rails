class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    if not is_logged_in
      flash[:error] = "You are not logged in! Please log in to access this page."
      redirect_to login_path
    end
    if @user.nil?
      @user = User.find(params[:id])
    end
    if current_user.id == @user.id
      render 'show'
    else
      render "not_allowed"
    end
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    if user_params[:usertype] == 'teacher' 
      data = TeacherUser.new
      data.save
      @user.user_category_type = 'teacher'
      @user.user_category_id = data.id

    else 
      data = StudentUser.new
      data.totalcoins = 0
      data.currentcoins = 0
      data.progress = 0
      data.lvl = 1
      data.save
      @user.user_category_type = 'student'
      @user.user_category_id = data.id
    
    end

    if @user.save 
      log_in(@user)
      respond_to do |format|
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      end
    else
      render 'new'
    end


  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:fname, :lname, :usertype, :email, :password, :password_confirmation)
    end
end

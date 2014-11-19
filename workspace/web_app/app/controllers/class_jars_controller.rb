class ClassJarsController < ApplicationController
  before_action :set_class_jar, only: [:show, :edit, :update, :destroy]

  # GET /class_jars
  # GET /class_jars.json
  def index
    @class_jars = ClassJar.all
  end

  # GET /class_jars/1
  # GET /class_jars/1.json
  def show
  end

  # GET /class_jars/new
  def new
    @class_jar = ClassJar.new
  end

  # GET /class_jars/1/edit
  def edit
  end

  # POST /class_jars
  # POST /class_jars.json
  def create
    @class_jar = ClassJar.new(class_jar_params)

    respond_to do |format|
      if @class_jar.save
        format.html { redirect_to @class_jar, notice: 'Class jar was successfully created.' }
        format.json { render :show, status: :created, location: @class_jar }
      else
        format.html { render :new }
        format.json { render json: @class_jar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_jars/1
  # PATCH/PUT /class_jars/1.json
  def update
    respond_to do |format|
      if @class_jar.update(class_jar_params)
        format.html { redirect_to @class_jar, notice: 'Class jar was successfully updated.' }
        format.json { render :show, status: :ok, location: @class_jar }
      else
        format.html { render :edit }
        format.json { render json: @class_jar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_jars/1
  # DELETE /class_jars/1.json
  def destroy
    @class_jar.destroy
    respond_to do |format|
      format.html { redirect_to class_jars_url, notice: 'Class jar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_jar
      @class_jar = ClassJar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_jar_params
      params.require(:class_jar).permit(:total, :progress, :name, :type, :uid)
    end
end

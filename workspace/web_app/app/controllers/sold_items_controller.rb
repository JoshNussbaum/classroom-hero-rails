class SoldItemsController < ApplicationController
  before_action :set_sold_item, only: [:show, :edit, :update, :destroy]

  # GET /sold_items
  # GET /sold_items.json
  def index
    @sold_items = SoldItem.all
  end

  # GET /sold_items/1
  # GET /sold_items/1.json
  def show
  end

  # GET /sold_items/new
  def new
    @sold_item = SoldItem.new
  end

  # GET /sold_items/1/edit
  def edit
  end

  # POST /sold_items
  # POST /sold_items.json
  def create
    @sold_item = SoldItem.new(sold_item_params)

    respond_to do |format|
      if @sold_item.save
        format.html { redirect_to @sold_item, notice: 'Sold item was successfully created.' }
        format.json { render :show, status: :created, location: @sold_item }
      else
        format.html { render :new }
        format.json { render json: @sold_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sold_items/1
  # PATCH/PUT /sold_items/1.json
  def update
    respond_to do |format|
      if @sold_item.update(sold_item_params)
        format.html { redirect_to @sold_item, notice: 'Sold item was successfully updated.' }
        format.json { render :show, status: :ok, location: @sold_item }
      else
        format.html { render :edit }
        format.json { render json: @sold_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sold_items/1
  # DELETE /sold_items/1.json
  def destroy
    @sold_item.destroy
    respond_to do |format|
      format.html { redirect_to sold_items_url, notice: 'Sold item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sold_item
      @sold_item = SoldItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sold_item_params
      params.require(:sold_item).permit(:uid, :iid, :tstamp)
    end
end

class BillMenusController < ApplicationController
  before_action :set_bill_menu, only: [:show, :edit, :update, :destroy]

  # GET /bill_menus
  # GET /bill_menus.json
  def index
    @bill_menus = BillMenu.all
  end

  # GET /bill_menus/1
  # GET /bill_menus/1.json
  def show
  end

  # GET /bill_menus/new
  def new
    @bill_menu = BillMenu.new
  end

  # GET /bill_menus/1/edit
  def edit
  end

  # POST /bill_menus
  # POST /bill_menus.json
  def create
    @bill_menu = BillMenu.new(bill_menu_params)

    respond_to do |format|
      if @bill_menu.save
        format.html { redirect_to @bill_menu, notice: 'Bill menu was successfully created.' }
        format.json { render :show, status: :created, location: @bill_menu }
      else
        format.html { render :new }
        format.json { render json: @bill_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bill_menus/1
  # PATCH/PUT /bill_menus/1.json
  def update
    respond_to do |format|
      if @bill_menu.update(bill_menu_params)
        format.html { redirect_to @bill_menu, notice: 'Bill menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @bill_menu }
      else
        format.html { render :edit }
        format.json { render json: @bill_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_menus/1
  # DELETE /bill_menus/1.json
  def destroy
    @bill_menu.destroy
    respond_to do |format|
      format.html { redirect_to bill_menus_url, notice: 'Bill menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill_menu
      @bill_menu = BillMenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bill_menu_params
      params.require(:bill_menu).permit(:menu_id, :bill_id)
    end
end

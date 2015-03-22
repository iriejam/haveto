class HavetoListsController < ApplicationController
  before_action :set_haveto_list, only: [:show, :edit, :update, :destroy]

  # GET /haveto_lists
  # GET /haveto_lists.json
  def index
    @haveto_lists = HavetoList.all
  end

  # GET /haveto_lists/1
  # GET /haveto_lists/1.json
  def show
  end

  # GET /haveto_lists/new
  def new
    @haveto_list = HavetoList.new
  end

  # GET /haveto_lists/1/edit
  def edit
  end

  # POST /haveto_lists
  # POST /haveto_lists.json
  def create
    @haveto_list = HavetoList.new(haveto_list_params)

    respond_to do |format|
      if @haveto_list.save
        format.html { redirect_to @haveto_list, notice: 'Haveto list was successfully created.' }
        format.json { render action: 'show', status: :created, location: @haveto_list }
      else
        format.html { render action: 'new' }
        format.json { render json: @haveto_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /haveto_lists/1
  # PATCH/PUT /haveto_lists/1.json
  def update
    respond_to do |format|
      if @haveto_list.update(haveto_list_params)
        format.html { redirect_to @haveto_list, notice: 'Haveto list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @haveto_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /haveto_lists/1
  # DELETE /haveto_lists/1.json
  def destroy
    @haveto_list.destroy
    respond_to do |format|
      format.html { redirect_to haveto_lists_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_haveto_list
      @haveto_list = HavetoList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def haveto_list_params
      params.require(:haveto_list).permit(:title, :description)
    end
end

class StudnetsController < ApplicationController
  before_action :set_studnet, only: [:show, :edit, :update, :destroy]

  # GET /studnets
  # GET /studnets.json
  def index
    @studnets = Studnet.all
  end

  # GET /studnets/1
  # GET /studnets/1.json
  def show
  end

  # GET /studnets/new
  def new
    @studnet = Studnet.new
  end

  # GET /studnets/1/edit
  def edit
  end

  # POST /studnets
  # POST /studnets.json
  def create
    @studnet = Studnet.new(studnet_params)

    respond_to do |format|
      if @studnet.save
        format.html { redirect_to @studnet, notice: 'Studnet was successfully created.' }
        format.json { render :show, status: :created, location: @studnet }
      else
        format.html { render :new }
        format.json { render json: @studnet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studnets/1
  # PATCH/PUT /studnets/1.json
  def update
    respond_to do |format|
      if @studnet.update(studnet_params)
        format.html { redirect_to @studnet, notice: 'Studnet was successfully updated.' }
        format.json { render :show, status: :ok, location: @studnet }
      else
        format.html { render :edit }
        format.json { render json: @studnet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studnets/1
  # DELETE /studnets/1.json
  def destroy
    @studnet.destroy
    respond_to do |format|
      format.html { redirect_to studnets_url, notice: 'Studnet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studnet
      @studnet = Studnet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studnet_params
      params.require(:studnet).permit(:name, :weight, :height, :color, :gpa)
    end
end

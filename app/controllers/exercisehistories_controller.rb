class ExercisehistoriesController < ApplicationController
  before_action :set_exercisehistory, only: [:show, :edit, :update, :destroy]

  # GET /exercisehistories
  # GET /exercisehistories.json
  def index
    @exercisehistories = Exercisehistory.all
  end

  # GET /exercisehistories/1
  # GET /exercisehistories/1.json
  def show
  end

  # GET /exercisehistories/new
  def new
    @exercisehistory = Exercisehistory.new
  end

  # GET /exercisehistories/1/edit
  def edit
  end

  # POST /exercisehistories
  # POST /exercisehistories.json
  def create
    @exercisehistory = Exercisehistory.new(exercisehistory_params)

    respond_to do |format|
      if @exercisehistory.save
        format.html { redirect_to @exercisehistory, notice: 'Exercisehistory was successfully created.' }
        format.json { render :show, status: :created, location: @exercisehistory }
      else
        format.html { render :new }
        format.json { render json: @exercisehistory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercisehistories/1
  # PATCH/PUT /exercisehistories/1.json
  def update
    respond_to do |format|
      if @exercisehistory.update(exercisehistory_params)
        format.html { redirect_to @exercisehistory, notice: 'Exercisehistory was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercisehistory }
      else
        format.html { render :edit }
        format.json { render json: @exercisehistory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercisehistories/1
  # DELETE /exercisehistories/1.json
  def destroy
    @exercisehistory.destroy
    respond_to do |format|
      format.html { redirect_to exercisehistories_url, notice: 'Exercisehistory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercisehistory
      @exercisehistory = Exercisehistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercisehistory_params
      params[:exercisehistory]
    end
end

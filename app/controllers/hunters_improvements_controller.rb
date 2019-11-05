# frozen_string_literal: true

class HuntersImprovementsController < ApplicationController
  before_action :set_hunters_improvement, only: %i[show edit update destroy]
  before_action :set_hunter
  before_action :set_improvements, only: %i[new create edit update]

  # GET /hunters_improvements
  # GET /hunters_improvements.json
  def index
    @hunters_improvements = HuntersImprovement.all
  end

  # GET /hunters_improvements/1
  # GET /hunters_improvements/1.json
  def show; end

  # GET /hunters_improvements/new
  def new
    @hunters_improvement = HuntersImprovement.new(hunter: @hunter)
   end

  # GET /hunters_improvements/1/edit
  def edit; end

  # POST /hunters_improvements
  # POST /hunters_improvements.json
  def create
    @hunters_improvement = HuntersImprovement.new(hunters_improvement_params)
    @hunters_improvement.hunter = @hunter

    respond_to do |format|
      if @hunters_improvement.save
        format.html { redirect_to hunter_hunters_improvement_url(hunter_id: @hunter.id, id: @hunters_improvement.id), notice: 'Hunters improvement was successfully created.' }
        format.json { render :show, status: :created, location: hunter_hunters_improvement_url(hunter_id: @hunter.id, id: @hunters_improvement.id) }
      else
        format.html { render :new }
        format.json { render json: @hunters_improvement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hunters_improvements/1
  # PATCH/PUT /hunters_improvements/1.json
  def update
    respond_to do |format|
      if @hunters_improvement.update(hunters_improvement_params)
        format.html { redirect_to hunter_hunters_improvement_url(hunter_id: @hunter.id, id: @hunters_improvement.id), notice: 'Hunters improvement was successfully updated.' }
        format.json { render :show, status: :ok, location: hunter_hunters_improvement_url(hunter_id: @hunter.id, id: @hunters_improvement.id) }
      else
        format.html { render :edit }
        format.json { render json: @hunters_improvement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hunters_improvements/1
  # DELETE /hunters_improvements/1.json
  def destroy
    @hunters_improvement.destroy
    respond_to do |format|
      format.html { redirect_to hunter_hunters_improvements_url, notice: 'Hunters improvement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_hunter
    @hunter = Hunter.find(params[:hunter_id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_hunters_improvement
    @hunters_improvement = HuntersImprovement.find(params[:id])
  end

  def set_improvements
    @improvements = @hunter ? @hunter.playbook.improvements : Improvement.all
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def hunters_improvement_params
    params.require(:hunters_improvement).permit(:hunter_id, :improvement_id)
  end
end

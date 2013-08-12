class SystemSummariesController < ApplicationController
  before_action :set_system_summary, only: [:show, :edit, :update, :destroy]

  # GET /system_summaries
  # GET /system_summaries.json
  def index
    @system_summaries = SystemSummary.all
  end

  # GET /system_summaries/1
  # GET /system_summaries/1.json
  def show
  end

  # GET /system_summaries/new
  def new
    @system_summary = SystemSummary.new
  end

  # GET /system_summaries/1/edit
  def edit
  end

  # POST /system_summaries
  # POST /system_summaries.json
  def create
    @system_summary = SystemSummary.new(system_summary_params)

    respond_to do |format|
      if @system_summary.save
        format.html { redirect_to @system_summary, notice: 'System summary was successfully created.' }
        format.json { render action: 'show', status: :created, location: @system_summary }
      else
        format.html { render action: 'new' }
        format.json { render json: @system_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /system_summaries/1
  # PATCH/PUT /system_summaries/1.json
  def update
    respond_to do |format|
      if @system_summary.update(system_summary_params)
        format.html { redirect_to @system_summary, notice: 'System summary was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @system_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /system_summaries/1
  # DELETE /system_summaries/1.json
  def destroy
    @system_summary.destroy
    respond_to do |format|
      format.html { redirect_to system_summaries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_system_summary
      @system_summary = SystemSummary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def system_summary_params
      params[:system_summary]
    end
end

class DriveSummariesController < ApplicationController
  before_action :set_drive_summary, only: [:show, :edit, :update, :destroy]

  # GET /drive_summaries
  # GET /drive_summaries.json
  def index
    @drive_summaries = DriveSummary.all
  end

  # GET /drive_summaries/1
  # GET /drive_summaries/1.json
  def show
  end

  # GET /drive_summaries/new
  def new
    @drive_summary = DriveSummary.new
  end

  # GET /drive_summaries/1/edit
  def edit
  end

  # POST /drive_summaries
  # POST /drive_summaries.json
  def create
    @drive_summary = DriveSummary.new(drive_summary_params)

    respond_to do |format|
      if @drive_summary.save
        format.html { redirect_to @drive_summary, notice: 'Drive summary was successfully created.' }
        format.json { render action: 'show', status: :created, location: @drive_summary }
      else
        format.html { render action: 'new' }
        format.json { render json: @drive_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drive_summaries/1
  # PATCH/PUT /drive_summaries/1.json
  def update
    respond_to do |format|
      if @drive_summary.update(drive_summary_params)
        format.html { redirect_to @drive_summary, notice: 'Drive summary was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @drive_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drive_summaries/1
  # DELETE /drive_summaries/1.json
  def destroy
    @drive_summary.destroy
    respond_to do |format|
      format.html { redirect_to drive_summaries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drive_summary
      @drive_summary = DriveSummary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drive_summary_params
      params[:drive_summary]
    end
end

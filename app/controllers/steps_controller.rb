class StepsController < ApplicationController
  before_action :set_project
  before_action :set_step, only: [:show, :edit, :update, :destroy]

  # GET /steps
  # GET /steps.json
  def index
    @steps = @project.steps.all
  end

  # GET /steps/1
  # GET /steps/1.json
  def show
  end

  # GET /steps/new
  def new
    @step = @project.steps.new
  end

  # GET /steps/1/edit
  def edit
  end

  # POST /steps
  # POST /steps.json
  def create
    @step = @project.steps.new(step_params)
    @project.steps << @step

    respond_to do |format|
      if @step.save
        @project.save
        format.html { redirect_to project_step_path(@project, @step), notice: 'Step was successfully created.' }
        format.json { render action: 'show', status: :created, location: @step }
      else
        format.html { render action: 'new' }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /steps/1
  # PATCH/PUT /steps/1.json
  def update
    respond_to do |format|
      if @step.update(step_params)
        format.html { redirect_to project_step_path(@project, @step), notice: 'Step was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steps/1
  # DELETE /steps/1.json
  def destroy
    @step.destroy
    respond_to do |format|
      format.html { redirect_to project_steps_url(@project) }
      format.json { head :no_content }
    end
  end

  private
    def set_project
      @project = Project.find(params[:project_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_step
      @step = @project.steps.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_params
      params.require(:step).permit(:name, :content)
    end
end

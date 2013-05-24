class MaterialsController < ApplicationController
  before_action :set_project
  before_action :set_material, only: [:show, :edit, :update, :destroy]

  # GET /materials
  # GET /materials.json
  def index
    @materials = @project.materials.all
  end

  # GET /materials/1
  # GET /materials/1.json
  def show
  end

  # GET /materials/new
  def new
    @material = @project.materials.new
  end

  # GET /materials/1/edit
  def edit
  end

  # POST /materials
  # POST /materials.json
  def create
    @material = @project.materials.new(material_params)
    @project.materials << @material #this is so stupid

    respond_to do |format|
      if @material.save
        @project.save
        format.html { redirect_to project_material_path(@project, @material), notice: 'Material was successfully created.' }
        format.json { render action: 'show', status: :created, location: @material }
      else
        format.html { render action: 'new' }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materials/1
  # PATCH/PUT /materials/1.json
  def update
    respond_to do |format|
      if @material.update(material_params)
        format.html { redirect_to project_material_path(@project, @material), notice: 'Material was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materials/1
  # DELETE /materials/1.json
  def destroy
    @material.destroy
    respond_to do |format|
      format.html { redirect_to project_materials_url(@project) }
      format.json { head :no_content }
    end
  end

  private
    def set_project
      @project = Project.find(params[:project_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_material
      @material = @project.materials.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_params
      params.require(:material).permit(:name, :url, :photo_url)
    end
end

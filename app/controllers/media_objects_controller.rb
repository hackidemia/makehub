class MediaObjectsController < ApplicationController
  before_action :set_media_object, only: [:show, :edit, :update, :destroy]

  # GET /media_objects
  # GET /media_objects.json
  def index
    @media_objects = MediaObject.all
  end

  # GET /media_objects/1
  # GET /media_objects/1.json
  def show
  end

  # GET /media_objects/new
  #def new
    #@media_object = MediaObject.new
  #end

  # GET /media_objects/1/edit
  #def edit
  #end

  # POST /media_objects
  # POST /media_objects.json
  #def create
    #@media_object = MediaObject.new(media_object_params)

    #respond_to do |format|
      #if @media_object.save
        #format.html { redirect_to @media_object, notice: 'MediaObject was successfully created.' }
        #format.json { render action: 'show', status: :created, location: @media_object }
      #else
        #format.html { render action: 'new' }
        #format.json { render json: @media_object.errors, status: :unprocessable_entity }
      #end
    #end
  #end

  # PATCH/PUT /media_objects/1
  # PATCH/PUT /media_objects/1.json
  #def update
    #respond_to do |format|
      #if @media_object.update(media_object_params)
        #format.html { redirect_to @media_object, notice: 'MediaObject was successfully updated.' }
        #format.json { head :no_content }
      #else
        #format.html { render action: 'edit' }
        #format.json { render json: @media_object.errors, status: :unprocessable_entity }
      #end
    #end
  #end

  # DELETE /media_objects/1
  # DELETE /media_objects/1.json
  def destroy
    @media_object.destroy
    respond_to do |format|
      format.html { redirect_to media_objects_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_object
      @media_object = MediaObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def media_object_params
      #params.require(:media_object).permit(:name, :url, :image, :image_url, :snippet, :step_id)
      params.require(:media_object).permit(:name, :image, :step_id)
    end
end

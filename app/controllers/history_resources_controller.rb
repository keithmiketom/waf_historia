class HistoryResourcesController < ApplicationController
  # GET /history_resources
  # GET /history_resources.json
  def index
    @history_resources = HistoryResource.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @history_resources }
    end
  end

  # GET /history_resources/1
  # GET /history_resources/1.json
  def show
    @history_resource = HistoryResource.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @history_resource }
    end
  end

  # GET /history_resources/new
  # GET /history_resources/new.json
  def new
    @history_resource = HistoryResource.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @history_resource }
    end
  end

  # GET /history_resources/1/edit
  def edit
    @history_resource = HistoryResource.find(params[:id])
  end

  # POST /history_resources
  # POST /history_resources.json
  def create
    @history_resource = HistoryResource.new(params[:history_resource])

    respond_to do |format|
      if @history_resource.save
        format.html { redirect_to @history_resource, notice: 'History resource was successfully created.' }
        format.json { render json: @history_resource, status: :created, location: @history_resource }
      else
        format.html { render action: "new" }
        format.json { render json: @history_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /history_resources/1
  # PUT /history_resources/1.json
  def update
    @history_resource = HistoryResource.find(params[:id])

    respond_to do |format|
      if @history_resource.update_attributes(params[:history_resource])
        format.html { redirect_to @history_resource, notice: 'History resource was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @history_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /history_resources/1
  # DELETE /history_resources/1.json
  def destroy
    @history_resource = HistoryResource.find(params[:id])
    @history_resource.destroy

    respond_to do |format|
      format.html { redirect_to history_resources_url }
      format.json { head :no_content }
    end
  end
end

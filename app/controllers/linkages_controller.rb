class LinkagesController < ApplicationController
  # GET /linkages
  # GET /linkages.json
  def index
    @linkages = Linkage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @linkages }
    end
  end

  # GET /linkages/1
  # GET /linkages/1.json
  def show
    @linkage = Linkage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @linkage }
    end
  end

  # GET /linkages/new
  # GET /linkages/new.json
  def new
    @linkage = Linkage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @linkage }
    end
  end

  # GET /linkages/1/edit
  def edit
    @linkage = Linkage.find(params[:id])
  end

  # POST /linkages
  # POST /linkages.json
  def create
    @linkage = Linkage.new(params[:linkage])

    respond_to do |format|
      if @linkage.save
        format.html { redirect_to @linkage, notice: 'Linkage was successfully created.' }
        format.json { render json: @linkage, status: :created, location: @linkage }
      else
        format.html { render action: "new" }
        format.json { render json: @linkage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /linkages/1
  # PUT /linkages/1.json
  def update
    @linkage = Linkage.find(params[:id])

    respond_to do |format|
      if @linkage.update_attributes(params[:linkage])
        format.html { redirect_to @linkage, notice: 'Linkage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @linkage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linkages/1
  # DELETE /linkages/1.json
  def destroy
    @linkage = Linkage.find(params[:id])
    @linkage.destroy

    respond_to do |format|
      format.html { redirect_to linkages_url }
      format.json { head :no_content }
    end
  end
end

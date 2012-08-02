class EducationliteraturecategoriesController < ApplicationController
  # GET /educationliteraturecategories
  # GET /educationliteraturecategories.json
  def index
    @educationliteraturecategories = Educationliteraturecategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @educationliteraturecategories }
    end
  end

  # GET /educationliteraturecategories/1
  # GET /educationliteraturecategories/1.json
  def show
    @educationliteraturecategory = Educationliteraturecategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @educationliteraturecategory }
    end
  end

  # GET /educationliteraturecategories/new
  # GET /educationliteraturecategories/new.json
  def new
    @educationliteraturecategory = Educationliteraturecategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @educationliteraturecategory }
    end
  end

  # GET /educationliteraturecategories/1/edit
  def edit
    @educationliteraturecategory = Educationliteraturecategory.find(params[:id])
  end

  # POST /educationliteraturecategories
  # POST /educationliteraturecategories.json
  def create
    @educationliteraturecategory = Educationliteraturecategory.new(params[:educationliteraturecategory])

    respond_to do |format|
      if @educationliteraturecategory.save
        format.html { redirect_to @educationliteraturecategory, :notice => 'Educationliteraturecategory was successfully created.' }
        format.json { render :json => @educationliteraturecategory, :status => :created, :location => @educationliteraturecategory }
      else
        format.html { render :action => "new" }
        format.json { render :json => @educationliteraturecategory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /educationliteraturecategories/1
  # PUT /educationliteraturecategories/1.json
  def update
    @educationliteraturecategory = Educationliteraturecategory.find(params[:id])

    respond_to do |format|
      if @educationliteraturecategory.update_attributes(params[:educationliteraturecategory])
        format.html { redirect_to @educationliteraturecategory, :notice => 'Educationliteraturecategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @educationliteraturecategory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /educationliteraturecategories/1
  # DELETE /educationliteraturecategories/1.json
  def destroy
    @educationliteraturecategory = Educationliteraturecategory.find(params[:id])
    @educationliteraturecategory.destroy

    respond_to do |format|
      format.html { redirect_to educationliteraturecategories_url }
      format.json { head :no_content }
    end
  end
end

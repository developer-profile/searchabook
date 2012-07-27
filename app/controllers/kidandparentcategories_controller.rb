class KidandparentcategoriesController < ApplicationController
  
    before_filter :authorize, :only => [:edit, :update, :destroy]
    
  # GET /kidandparentcategories
  # GET /kidandparentcategories.json
  def index
    @kidandparentcategories = Kidandparentcategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @kidandparentcategories }
    end
  end

  # GET /kidandparentcategories/1
  # GET /kidandparentcategories/1.json
  def show
    @kidandparentcategory = Kidandparentcategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @kidandparentcategory }
    end
  end

  # GET /kidandparentcategories/new
  # GET /kidandparentcategories/new.json
  def new
    @kidandparentcategory = Kidandparentcategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @kidandparentcategory }
    end
  end

  # GET /kidandparentcategories/1/edit
  def edit
    @kidandparentcategory = Kidandparentcategory.find(params[:id])
  end

  # POST /kidandparentcategories
  # POST /kidandparentcategories.json
  def create
    @kidandparentcategory = Kidandparentcategory.new(params[:kidandparentcategory])

    respond_to do |format|
      if @kidandparentcategory.save
        format.html { redirect_to @kidandparentcategory, :notice => 'Kidandparentcategory was successfully created.' }
        format.json { render :json => @kidandparentcategory, :status => :created, :location => @kidandparentcategory }
      else
        format.html { render :action => "new" }
        format.json { render :json => @kidandparentcategory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kidandparentcategories/1
  # PUT /kidandparentcategories/1.json
  def update
    @kidandparentcategory = Kidandparentcategory.find(params[:id])

    respond_to do |format|
      if @kidandparentcategory.update_attributes(params[:kidandparentcategory])
        format.html { redirect_to @kidandparentcategory, :notice => 'Kidandparentcategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @kidandparentcategory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kidandparentcategories/1
  # DELETE /kidandparentcategories/1.json
  def destroy
    @kidandparentcategory = Kidandparentcategory.find(params[:id])
    @kidandparentcategory.destroy

    respond_to do |format|
      format.html { redirect_to kidandparentcategories_url }
      format.json { head :no_content }
    end
  end
end

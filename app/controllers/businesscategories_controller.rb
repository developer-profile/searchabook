class BusinesscategoriesController < ApplicationController
  # GET /businesscategories
  # GET /businesscategories.json
  def index
    @businesscategories = Businesscategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @businesscategories }
    end
  end

  # GET /businesscategories/1
  # GET /businesscategories/1.json
  def show
    @businesscategory = Businesscategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @businesscategory }
    end
  end

  # GET /businesscategories/new
  # GET /businesscategories/new.json
  def new
    @businesscategory = Businesscategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @businesscategory }
    end
  end

  # GET /businesscategories/1/edit
  def edit
    @businesscategory = Businesscategory.find(params[:id])
  end

  # POST /businesscategories
  # POST /businesscategories.json
  def create
    @businesscategory = Businesscategory.new(params[:businesscategory])

    respond_to do |format|
      if @businesscategory.save
        format.html { redirect_to @businesscategory, :notice => 'Businesscategory was successfully created.' }
        format.json { render :json => @businesscategory, :status => :created, :location => @businesscategory }
      else
        format.html { render :action => "new" }
        format.json { render :json => @businesscategory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /businesscategories/1
  # PUT /businesscategories/1.json
  def update
    @businesscategory = Businesscategory.find(params[:id])

    respond_to do |format|
      if @businesscategory.update_attributes(params[:businesscategory])
        format.html { redirect_to @businesscategory, :notice => 'Businesscategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @businesscategory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /businesscategories/1
  # DELETE /businesscategories/1.json
  def destroy
    @businesscategory = Businesscategory.find(params[:id])
    @businesscategory.destroy

    respond_to do |format|
      format.html { redirect_to businesscategories_url }
      format.json { head :no_content }
    end
  end
end

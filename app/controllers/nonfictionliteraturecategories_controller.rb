class NonfictionliteraturecategoriesController < ApplicationController
  # GET /nonfictionliteraturecategories
  # GET /nonfictionliteraturecategories.json
  def index
    @nonfictionliteraturecategories = Nonfictionliteraturecategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @nonfictionliteraturecategories }
    end
  end

  # GET /nonfictionliteraturecategories/1
  # GET /nonfictionliteraturecategories/1.json
  def show
    @nonfictionliteraturecategory = Nonfictionliteraturecategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @nonfictionliteraturecategory }
    end
  end

  # GET /nonfictionliteraturecategories/new
  # GET /nonfictionliteraturecategories/new.json
  def new
    @nonfictionliteraturecategory = Nonfictionliteraturecategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @nonfictionliteraturecategory }
    end
  end

  # GET /nonfictionliteraturecategories/1/edit
  def edit
    @nonfictionliteraturecategory = Nonfictionliteraturecategory.find(params[:id])
  end

  # POST /nonfictionliteraturecategories
  # POST /nonfictionliteraturecategories.json
  def create
    @nonfictionliteraturecategory = Nonfictionliteraturecategory.new(params[:nonfictionliteraturecategory])

    respond_to do |format|
      if @nonfictionliteraturecategory.save
        format.html { redirect_to @nonfictionliteraturecategory, :notice => 'Nonfictionliteraturecategory was successfully created.' }
        format.json { render :json => @nonfictionliteraturecategory, :status => :created, :location => @nonfictionliteraturecategory }
      else
        format.html { render :action => "new" }
        format.json { render :json => @nonfictionliteraturecategory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nonfictionliteraturecategories/1
  # PUT /nonfictionliteraturecategories/1.json
  def update
    @nonfictionliteraturecategory = Nonfictionliteraturecategory.find(params[:id])

    respond_to do |format|
      if @nonfictionliteraturecategory.update_attributes(params[:nonfictionliteraturecategory])
        format.html { redirect_to @nonfictionliteraturecategory, :notice => 'Nonfictionliteraturecategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @nonfictionliteraturecategory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nonfictionliteraturecategories/1
  # DELETE /nonfictionliteraturecategories/1.json
  def destroy
    @nonfictionliteraturecategory = Nonfictionliteraturecategory.find(params[:id])
    @nonfictionliteraturecategory.destroy

    respond_to do |format|
      format.html { redirect_to nonfictionliteraturecategories_url }
      format.json { head :no_content }
    end
  end
end

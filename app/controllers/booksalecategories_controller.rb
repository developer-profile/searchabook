class BooksalecategoriesController < ApplicationController
  # GET /booksalecategories
  # GET /booksalecategories.json
  def index
    @booksalecategories = Booksalecategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @booksalecategories }
    end
  end

  # GET /booksalecategories/1
  # GET /booksalecategories/1.json
  def show
    @booksalecategory = Booksalecategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @booksalecategory }
    end
  end

  # GET /booksalecategories/new
  # GET /booksalecategories/new.json
  def new
    @booksalecategory = Booksalecategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @booksalecategory }
    end
  end

  # GET /booksalecategories/1/edit
  def edit
    @booksalecategory = Booksalecategory.find(params[:id])
  end

  # POST /booksalecategories
  # POST /booksalecategories.json
  def create
    @booksalecategory = Booksalecategory.new(params[:booksalecategory])

    respond_to do |format|
      if @booksalecategory.save
        format.html { redirect_to @booksalecategory, :notice => 'Booksalecategory was successfully created.' }
        format.json { render :json => @booksalecategory, :status => :created, :location => @booksalecategory }
      else
        format.html { render :action => "new" }
        format.json { render :json => @booksalecategory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /booksalecategories/1
  # PUT /booksalecategories/1.json
  def update
    @booksalecategory = Booksalecategory.find(params[:id])

    respond_to do |format|
      if @booksalecategory.update_attributes(params[:booksalecategory])
        format.html { redirect_to @booksalecategory, :notice => 'Booksalecategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @booksalecategory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /booksalecategories/1
  # DELETE /booksalecategories/1.json
  def destroy
    @booksalecategory = Booksalecategory.find(params[:id])
    @booksalecategory.destroy

    respond_to do |format|
      format.html { redirect_to booksalecategories_url }
      format.json { head :no_content }
    end
  end
end

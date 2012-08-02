class BooksalesController < ApplicationController
  # GET /booksales
  # GET /booksales.json
  def index
    @booksales = Booksale.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @booksales }
    end
  end

  # GET /booksales/1
  # GET /booksales/1.json
  def show
    @booksale = Booksale.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @booksale }
    end
  end

  # GET /booksales/new
  # GET /booksales/new.json
  def new
    @booksale = Booksale.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @booksale }
    end
  end

  # GET /booksales/1/edit
  def edit
    @booksale = Booksale.find(params[:id])
  end

  # POST /booksales
  # POST /booksales.json
  def create
    @booksale = Booksale.new(params[:booksale])

    respond_to do |format|
      if @booksale.save
        format.html { redirect_to @booksale, :notice => 'Booksale was successfully created.' }
        format.json { render :json => @booksale, :status => :created, :location => @booksale }
      else
        format.html { render :action => "new" }
        format.json { render :json => @booksale.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /booksales/1
  # PUT /booksales/1.json
  def update
    @booksale = Booksale.find(params[:id])

    respond_to do |format|
      if @booksale.update_attributes(params[:booksale])
        format.html { redirect_to @booksale, :notice => 'Booksale was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @booksale.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /booksales/1
  # DELETE /booksales/1.json
  def destroy
    @booksale = Booksale.find(params[:id])
    @booksale.destroy

    respond_to do |format|
      format.html { redirect_to booksales_url }
      format.json { head :no_content }
    end
  end
end

class KidandparentbooksController < ApplicationController
  
  before_filter :authorize, :only => [:new, :edit, :update, :destroy]
  
  # GET /kidandparentbooks
  # GET /kidandparentbooks.json
  def index
    @kidandparentbooks = Kidandparentbook.search(params[:search]).paginate(:per_page => 18, :page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @kidandparentbooks }
    end
  end

  # GET /kidandparentbooks/1
  # GET /kidandparentbooks/1.json
  def show
    @kidandparentbook = Kidandparentbook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @kidandparentbook }
    end
  end

  # GET /kidandparentbooks/new
  # GET /kidandparentbooks/new.json
  def new
    @kidandparentbook = Kidandparentbook.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @kidandparentbook }
    end
  end

  # GET /kidandparentbooks/1/edit
  def edit
    @kidandparentbook = Kidandparentbook.find(params[:id])
  end

  # POST /kidandparentbooks
  # POST /kidandparentbooks.json
  def create
    @kidandparentbook = Kidandparentbook.new(params[:kidandparentbook])

    respond_to do |format|
      if @kidandparentbook.save
        format.html { redirect_to @kidandparentbook, :notice => 'Kidandparentbook was successfully created.' }
        format.json { render :json => @kidandparentbook, :status => :created, :location => @kidandparentbook }
      else
        format.html { render :action => "new" }
        format.json { render :json => @kidandparentbook.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kidandparentbooks/1
  # PUT /kidandparentbooks/1.json
  def update
    @kidandparentbook = Kidandparentbook.find(params[:id])

    respond_to do |format|
      if @kidandparentbook.update_attributes(params[:kidandparentbook])
        format.html { redirect_to @kidandparentbook, :notice => 'Kidandparentbook was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @kidandparentbook.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kidandparentbooks/1
  # DELETE /kidandparentbooks/1.json
  def destroy
    @kidandparentbook = Kidandparentbook.find(params[:id])
    @kidandparentbook.destroy

    respond_to do |format|
      format.html { redirect_to kidandparentbooks_url }
      format.json { head :no_content }
    end
  end
end

class NonfictionliteraturesController < ApplicationController
  # GET /nonfictionliteratures
  # GET /nonfictionliteratures.json
  def index
    @nonfictionliteratures = Nonfictionliterature.search(params[:search]).paginate(:per_page => 18, :page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @nonfictionliteratures }
    end
  end

  # GET /nonfictionliteratures/1
  # GET /nonfictionliteratures/1.json
  def show
    @nonfictionliterature = Nonfictionliterature.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @nonfictionliterature }
    end
  end

  # GET /nonfictionliteratures/new
  # GET /nonfictionliteratures/new.json
  def new
    @nonfictionliterature = Nonfictionliterature.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @nonfictionliterature }
    end
  end

  # GET /nonfictionliteratures/1/edit
  def edit
    @nonfictionliterature = Nonfictionliterature.find(params[:id])
  end

  # POST /nonfictionliteratures
  # POST /nonfictionliteratures.json
  def create
    @nonfictionliterature = Nonfictionliterature.new(params[:nonfictionliterature])

    respond_to do |format|
      if @nonfictionliterature.save
        format.html { redirect_to @nonfictionliterature, :notice => 'Nonfictionliterature was successfully created.' }
        format.json { render :json => @nonfictionliterature, :status => :created, :location => @nonfictionliterature }
      else
        format.html { render :action => "new" }
        format.json { render :json => @nonfictionliterature.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nonfictionliteratures/1
  # PUT /nonfictionliteratures/1.json
  def update
    @nonfictionliterature = Nonfictionliterature.find(params[:id])

    respond_to do |format|
      if @nonfictionliterature.update_attributes(params[:nonfictionliterature])
        format.html { redirect_to @nonfictionliterature, :notice => 'Nonfictionliterature was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @nonfictionliterature.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nonfictionliteratures/1
  # DELETE /nonfictionliteratures/1.json
  def destroy
    @nonfictionliterature = Nonfictionliterature.find(params[:id])
    @nonfictionliterature.destroy

    respond_to do |format|
      format.html { redirect_to nonfictionliteratures_url }
      format.json { head :no_content }
    end
  end
end

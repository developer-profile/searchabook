class EducationliteraturesController < ApplicationController
  # GET /educationliteratures
  # GET /educationliteratures.json
  def index
    @educationliteratures = Educationliterature.search(params[:search]).paginate(:per_page => 18, :page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @educationliteratures }
    end
  end

  # GET /educationliteratures/1
  # GET /educationliteratures/1.json
  def show
    @educationliterature = Educationliterature.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @educationliterature }
    end
  end

  # GET /educationliteratures/new
  # GET /educationliteratures/new.json
  def new
    @educationliterature = Educationliterature.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @educationliterature }
    end
  end

  # GET /educationliteratures/1/edit
  def edit
    @educationliterature = Educationliterature.find(params[:id])
  end

  # POST /educationliteratures
  # POST /educationliteratures.json
  def create
    @educationliterature = Educationliterature.new(params[:educationliterature])

    respond_to do |format|
      if @educationliterature.save
        format.html { redirect_to @educationliterature, :notice => 'Educationliterature was successfully created.' }
        format.json { render :json => @educationliterature, :status => :created, :location => @educationliterature }
      else
        format.html { render :action => "new" }
        format.json { render :json => @educationliterature.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /educationliteratures/1
  # PUT /educationliteratures/1.json
  def update
    @educationliterature = Educationliterature.find(params[:id])

    respond_to do |format|
      if @educationliterature.update_attributes(params[:educationliterature])
        format.html { redirect_to @educationliterature, :notice => 'Educationliterature was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @educationliterature.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /educationliteratures/1
  # DELETE /educationliteratures/1.json
  def destroy
    @educationliterature = Educationliterature.find(params[:id])
    @educationliterature.destroy

    respond_to do |format|
      format.html { redirect_to educationliteratures_url }
      format.json { head :no_content }
    end
  end
end

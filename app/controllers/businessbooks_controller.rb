class BusinessbooksController < ApplicationController
  # GET /businessbooks
  # GET /businessbooks.json
  def index
    @businessbooks = Businessbook.search(params[:search]).paginate(:per_page => 18, :page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @businessbooks }
    end
  end

  # GET /businessbooks/1
  # GET /businessbooks/1.json
  def show
    @businessbook = Businessbook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @businessbook }
    end
  end

  # GET /businessbooks/new
  # GET /businessbooks/new.json
  def new
    @businessbook = Businessbook.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @businessbook }
    end
  end

  # GET /businessbooks/1/edit
  def edit
    @businessbook = Businessbook.find(params[:id])
  end

  # POST /businessbooks
  # POST /businessbooks.json
  def create
    @businessbook = Businessbook.new(params[:businessbook])

    respond_to do |format|
      if @businessbook.save
        format.html { redirect_to @businessbook, :notice => 'Businessbook was successfully created.' }
        format.json { render :json => @businessbook, :status => :created, :location => @businessbook }
      else
        format.html { render :action => "new" }
        format.json { render :json => @businessbook.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /businessbooks/1
  # PUT /businessbooks/1.json
  def update
    @businessbook = Businessbook.find(params[:id])

    respond_to do |format|
      if @businessbook.update_attributes(params[:businessbook])
        format.html { redirect_to @businessbook, :notice => 'Businessbook was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @businessbook.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /businessbooks/1
  # DELETE /businessbooks/1.json
  def destroy
    @businessbook = Businessbook.find(params[:id])
    @businessbook.destroy

    respond_to do |format|
      format.html { redirect_to businessbooks_url }
      format.json { head :no_content }
    end
  end
end

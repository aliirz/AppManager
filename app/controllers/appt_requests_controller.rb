class ApptRequestsController < ApplicationController
  # GET /appt_requests
  # GET /appt_requests.xml
  def index
    @appt_requests = ApptRequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @appt_requests }
    end
  end

  # GET /appt_requests/1
  # GET /appt_requests/1.xml
  def show
    @appt_request = ApptRequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @appt_request }
    end
  end

  # GET /appt_requests/new
  # GET /appt_requests/new.xml
  def new
    @appt_request = ApptRequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @appt_request }
    end
  end

  # GET /appt_requests/1/edit
  def edit
    @appt_request = ApptRequest.find(params[:id])
  end

  # POST /appt_requests
  # POST /appt_requests.xml
  # POST /appt_requests.json
  def create
    @appt_request = ApptRequest.new(params[:appt_request])

    respond_to do |format|
      if @appt_request.save
        format.html { redirect_to(@appt_request, :notice => 'Appt request was successfully created.') }
        format.xml  { render :xml => @appt_request, :status => :created, :location => @appt_request }
		format.json { render :json => @appt_request, :status => :created, :location => @appt_request}
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @appt_request.errors, :status => :unprocessable_entity }
		format.json {render :json => @appt_request.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /appt_requests/1
  # PUT /appt_requests/1.xml
  def update
    @appt_request = ApptRequest.find(params[:id])

    respond_to do |format|
      if @appt_request.update_attributes(params[:appt_request])
        format.html { redirect_to(@appt_request, :notice => 'Appt request was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @appt_request.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /appt_requests/1
  # DELETE /appt_requests/1.xml
  def destroy
    @appt_request = ApptRequest.find(params[:id])
    @appt_request.destroy

    respond_to do |format|
      format.html { redirect_to(appt_requests_url) }
      format.xml  { head :ok }
    end
  end
end

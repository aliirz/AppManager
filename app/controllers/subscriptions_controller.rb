class SubscriptionsController < ApplicationController
  # GET /subscriptions
  # GET /subscriptions.xml
  def index
    @subscriptions = Subscription.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @subscriptions }
	  format.json {render :json => @subscriptions }
    end
  end

  # GET /subscriptions/1
  # GET /subscriptions/1.xml
  def show
    @subscription = Subscription.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @subscription }
    end
  end

  # GET /subscriptions/new
  # GET /subscriptions/new.xml
  def new
    @subscription = Subscription.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @subscription }
    end
  end

  # GET /subscriptions/1/edit
  def edit
    @subscription = Subscription.find(params[:id])
  end

  # POST /subscriptions
  # POST /subscriptions.xml
  #POST /subscriptions.json
  def create
    @subscription = Subscription.new(params[:subscription])

    respond_to do |format|
      if @subscription.save
        SubscriptionsMailer.notify_email(@subscription).deliver
        format.html { redirect_to(@subscription, :notice => 'Subscription was successfully created.') }
        format.xml  { render :xml => @subscription, :status => :created, :location => @subscription }
		format.json {render :json => @subscription, :status => :created, :location => @subscription}
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @subscription.errors, :status => :unprocessable_entity }
		format.json {render :json => @subscription.errors, :status => :unprocessable_entity}
      end
    end
  end

  # PUT /subscriptions/1
  # PUT /subscriptions/1.xml
  def update
    @subscription = Subscription.find(params[:id])

    respond_to do |format|
      if @subscription.update_attributes(params[:subscription])
        format.html { redirect_to(@subscription, :notice => 'Subscription was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @subscription.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /subscriptions/1
  # DELETE /subscriptions/1.xml
  def destroy
    @subscription = Subscription.find(params[:id])
    @subscription.destroy

    respond_to do |format|
      format.html { redirect_to(subscriptions_url) }
      format.xml  { head :ok }
    end
  end
end

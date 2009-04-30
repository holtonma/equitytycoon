class PortfolioItemsController < ApplicationController
  # GET /portfolio_items
  # GET /portfolio_items.xml
  def index
    @portfolio_items = PortfolioItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @portfolio_items }
    end
  end

  # GET /portfolio_items/1
  # GET /portfolio_items/1.xml
  def show
    @portfolio_item = PortfolioItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @portfolio_item }
    end
  end

  # GET /portfolio_items/new
  # GET /portfolio_items/new.xml
  def new
    @portfolio_item = PortfolioItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @portfolio_item }
    end
  end

  # GET /portfolio_items/1/edit
  def edit
    @portfolio_item = PortfolioItem.find(params[:id])
  end

  # POST /portfolio_items
  # POST /portfolio_items.xml
  def create
    @portfolio_item = PortfolioItem.new(params[:portfolio_item])

    respond_to do |format|
      if @portfolio_item.save
        flash[:notice] = 'PortfolioItem was successfully created.'
        format.html { redirect_to(@portfolio_item) }
        format.xml  { render :xml => @portfolio_item, :status => :created, :location => @portfolio_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @portfolio_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /portfolio_items/1
  # PUT /portfolio_items/1.xml
  def update
    @portfolio_item = PortfolioItem.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update_attributes(params[:portfolio_item])
        flash[:notice] = 'PortfolioItem was successfully updated.'
        format.html { redirect_to(@portfolio_item) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @portfolio_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /portfolio_items/1
  # DELETE /portfolio_items/1.xml
  def destroy
    @portfolio_item = PortfolioItem.find(params[:id])
    @portfolio_item.destroy

    respond_to do |format|
      format.html { redirect_to(portfolio_items_url) }
      format.xml  { head :ok }
    end
  end
end

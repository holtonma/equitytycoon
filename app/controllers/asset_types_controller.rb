class AssetTypesController < ApplicationController
  # GET /asset_types
  # GET /asset_types.xml
  def index
    @asset_types = AssetType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @asset_types }
    end
  end

  # GET /asset_types/1
  # GET /asset_types/1.xml
  def show
    @asset_type = AssetType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @asset_type }
    end
  end

  # GET /asset_types/new
  # GET /asset_types/new.xml
  def new
    @asset_type = AssetType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @asset_type }
    end
  end

  # GET /asset_types/1/edit
  def edit
    @asset_type = AssetType.find(params[:id])
  end

  # POST /asset_types
  # POST /asset_types.xml
  def create
    @asset_type = AssetType.new(params[:asset_type])

    respond_to do |format|
      if @asset_type.save
        flash[:notice] = 'AssetType was successfully created.'
        format.html { redirect_to(@asset_type) }
        format.xml  { render :xml => @asset_type, :status => :created, :location => @asset_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @asset_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /asset_types/1
  # PUT /asset_types/1.xml
  def update
    @asset_type = AssetType.find(params[:id])

    respond_to do |format|
      if @asset_type.update_attributes(params[:asset_type])
        flash[:notice] = 'AssetType was successfully updated.'
        format.html { redirect_to(@asset_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @asset_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /asset_types/1
  # DELETE /asset_types/1.xml
  def destroy
    @asset_type = AssetType.find(params[:id])
    @asset_type.destroy

    respond_to do |format|
      format.html { redirect_to(asset_types_url) }
      format.xml  { head :ok }
    end
  end
end

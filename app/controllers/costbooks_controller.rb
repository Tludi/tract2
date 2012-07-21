class CostbooksController < ApplicationController
  before_filter :find_costbook, :only => [:show, :edit, :update, :destroy]
  # GET /costbooks
  # GET /costbooks.json
  def index
    @costbooks = Costbook.all
    #@costbook = Costbook.first
    @current_costbook = @costbook
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @costbooks }
    end
  end

  # GET /costbooks/1
  # GET /costbooks/1.json
  def show
    @costbooks = Costbook.all
    @material = @costbook.materials.build

    respond_to do |format|
      format.html # { redirect_to costbooks_url(:costbook => @current_costbook.id) }
      format.json { render json: @costbook }
    end
  end

  # GET /costbooks/new
  # GET /costbooks/new.json
  def new
    @costbook = Costbook.new
    


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @costbook }
    end
  end

  # GET /costbooks/1/edit
  def edit
    # @costbook defined in before_filter
  end

  # POST /costbooks
  # POST /costbooks.json
  def create
    @costbook = Costbook.new(params[:costbook])
    @material = @costbook.materials.build(params[:material])
    respond_to do |format|
      if @costbook.save
        format.html { redirect_to @costbook, notice: 'Costbook was successfully created.' }
        format.json { render json: @costbook, status: :created, location: @costbook }
      else
        format.html { render action: "new" }
        format.json { render json: @costbook.errors, status: :unprocessable_entity }
      end

      if @material.save
        format.html { redirect_to @costbook, notice: 'Material was successfully created.' }
        format.json { render json: @material, status: :created, location: @material }
      else
        format.html { render action: "new" }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
 
  end

  # PUT /costbooks/1
  # PUT /costbooks/1.json
  def update
    # @costbook defined in before_filter
    respond_to do |format|
      if @costbook.update_attributes(params[:costbook])
        format.html { redirect_to @costbook, notice: 'Costbook was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @costbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /costbooks/1
  # DELETE /costbooks/1.json
  def destroy
    # @costbook defined in before_filter
    @costbook.destroy

    respond_to do |format|
      format.html { redirect_to costbooks_url }
      format.json { head :no_content }
    end
  end

  private
    def find_costbook
      @costbook = Costbook.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      flash[:alert] = "Costbook not found."
      redirect_to costbooks_path
    end
end

class TakeoffsController < ApplicationController
  # GET /takeoffs
  # GET /takeoffs.json
  def index
    @takeoffs = Takeoff.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @takeoffs }
    end
  end

  # GET /takeoffs/1
  # GET /takeoffs/1.json
  def show
    @takeoff = Takeoff.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @takeoff }
    end
  end

  # GET /takeoffs/new
  # GET /takeoffs/new.json
  def new
    @takeoff = Takeoff.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @takeoff }
    end
  end

  # GET /takeoffs/1/edit
  def edit
    @takeoff = Takeoff.find(params[:id])
  end

  # POST /takeoffs
  # POST /takeoffs.json
  def create
    @takeoff = Takeoff.new(params[:takeoff])

    respond_to do |format|
      if @takeoff.save
        format.html { redirect_to @takeoff, notice: 'Takeoff was successfully created.' }
        format.json { render json: @takeoff, status: :created, location: @takeoff }
      else
        format.html { render action: "new" }
        format.json { render json: @takeoff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /takeoffs/1
  # PUT /takeoffs/1.json
  def update
    @takeoff = Takeoff.find(params[:id])

    respond_to do |format|
      if @takeoff.update_attributes(params[:takeoff])
        format.html { redirect_to @takeoff, notice: 'Takeoff was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @takeoff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /takeoffs/1
  # DELETE /takeoffs/1.json
  def destroy
    @takeoff = Takeoff.find(params[:id])
    @takeoff.destroy

    respond_to do |format|
      format.html { redirect_to takeoffs_url }
      format.json { head :no_content }
    end
  end
end

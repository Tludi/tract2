class CsiDivisionsController < ApplicationController
  # GET /csi_divisions
  # GET /csi_divisions.json
  def index
    @csi_divisions = CsiDivision.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @csi_divisions }
    end
  end

  # GET /csi_divisions/1
  # GET /csi_divisions/1.json
  def show
    @csi_division = CsiDivision.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @csi_division }
    end
  end

  # GET /csi_divisions/new
  # GET /csi_divisions/new.json
  def new
    @csi_division = CsiDivision.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @csi_division }
    end
  end

  # GET /csi_divisions/1/edit
  def edit
    @csi_division = CsiDivision.find(params[:id])
  end

  # POST /csi_divisions
  # POST /csi_divisions.json
  def create
    @csi_division = CsiDivision.new(params[:csi_division])

    respond_to do |format|
      if @csi_division.save
        format.html { redirect_to @csi_division, notice: 'Csi division was successfully created.' }
        format.json { render json: @csi_division, status: :created, location: @csi_division }
      else
        format.html { render action: "new" }
        format.json { render json: @csi_division.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /csi_divisions/1
  # PUT /csi_divisions/1.json
  def update
    @csi_division = CsiDivision.find(params[:id])

    respond_to do |format|
      if @csi_division.update_attributes(params[:csi_division])
        format.html { redirect_to @csi_division, notice: 'Csi division was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @csi_division.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /csi_divisions/1
  # DELETE /csi_divisions/1.json
  def destroy
    @csi_division = CsiDivision.find(params[:id])
    @csi_division.destroy

    respond_to do |format|
      format.html { redirect_to csi_divisions_url }
      format.json { head :no_content }
    end
  end
end

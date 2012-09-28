class MfnwsController < ApplicationController
  # GET /mfnws
  # GET /mfnws.json
  def index
    @mfnws = Mfnw.all
  end

  # GET /mfnws/1
  # GET /mfnws/1.json
  def show
    @mfnw = Mfnw.find(params[:id])
    @comment = @mfnw.comments.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mfnw }
    end
  end

  # GET /mfnws/new
  # GET /mfnws/new.json
  def new
    @mfnw = Mfnw.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mfnw }
    end
  end

  # GET /mfnws/1/edit
  def edit
    @mfnw = Mfnw.find(params[:id])
    @comment = @mfnw.comments.build
  end

  # POST /mfnws
  # POST /mfnws.json
  def create
    @mfnw = Mfnw.new(params[:mfnw])

    respond_to do |format|
      if @mfnw.save
        format.html { redirect_to @mfnw, notice: 'Mfnw was successfully created.' }
        format.json { render json: @mfnw, status: :created, location: @mfnw }
      else
        format.html { render action: "new" }
        format.json { render json: @mfnw.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mfnws/1
  # PUT /mfnws/1.json
  def update
    @mfnw = Mfnw.find(params[:id])

    respond_to do |format|
      if @mfnw.update_attributes(params[:mfnw])
        format.html { redirect_to @mfnw, notice: 'Mfnw was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mfnw.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mfnws/1
  # DELETE /mfnws/1.json
  def destroy
    @mfnw = Mfnw.find(params[:id])
    @mfnw.destroy

    respond_to do |format|
      format.html { redirect_to mfnws_url }
      format.json { head :no_content }
    end
  end
end

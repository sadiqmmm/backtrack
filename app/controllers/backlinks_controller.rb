class BacklinksController < ApplicationController
  before_action :set_backlink, only: [:show, :edit, :update, :destroy]

  # GET /backlinks
  # GET /backlinks.json
  def index
    @backlinks = Backlink.all
  end

  # GET /backlinks/1
  # GET /backlinks/1.json
  def show
  end

  # GET /backlinks/new
  def new
    @backlink = Backlink.new
  end

  # GET /backlinks/1/edit
  def edit
  end

  # POST /backlinks
  # POST /backlinks.json
  def create
    @backlink = Backlink.new(backlink_params)
    @comment.project_url = params[:project_id]

    respond_to do |format|
      if @backlink.save
        format.html { redirect_to @backlink, notice: 'Backlink was successfully created.' }
        format.json { render action: 'show', status: :created, location: @backlink }
      else
        format.html { render action: 'new' }
        format.json { render json: @backlink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /backlinks/1
  # PATCH/PUT /backlinks/1.json
  def update
    respond_to do |format|
      if @backlink.update(backlink_params)
        format.html { redirect_to @backlink, notice: 'Backlink was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @backlink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backlinks/1
  # DELETE /backlinks/1.json
  def destroy
    @backlink.destroy
    respond_to do |format|
      format.html { redirect_to backlinks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_backlink
      @backlink = Backlink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def backlink_params
      params.require(:backlink).permit(:project, :project_url, :backlink_url, :method, :published_at, :notes, :project_id)
    end
end

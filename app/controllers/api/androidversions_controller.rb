class Api::AndroidversionsController < ApplicationController
  before_action :set_androidversion, only: [:show, :edit, :update, :destroy]

  # GET /androidversions
  def index
    @androidversions = Androidversion.all

    render json: @androidversions.as_json(root: true, except: [:created_at, :updated_at, :id], location: @androidversions)
  end

  # GET /androidversions/1
  def show
  end

  # GET /androidversions/new
  def new
    @androidversion = Androidversion.new
    render json: @androidversion.as_json(root: true, except: [:created_at, :updated_at])
  end

  # GET /androidversions/1/edit
  def edit
  end

  # POST /androidversions
  def create
    @androidversion = Androidversion.new(androidversion_params)

    if @androidversion.save
      render json: @androidversion.as_json(root: true, except: [:created_at, :updated_at]), status: :created
    else
      render json: @androidversion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /androidversions/1
  def update
    if @androidversion.update(androidversion_params)
      render json: @androidversion.as_json(root: true, except: [:created_at, :updated_at])
    else
      render json: @androidversion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /androidversions/1
  def destroy
    @androidversion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_androidversion
      @androidversion = Androidversion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def androidversion_params
      params.require(:androidversion).permit(:ver, :name, :api)
    end
end

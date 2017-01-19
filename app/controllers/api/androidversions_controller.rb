class Api::AndroidversionsController < ApplicationController
  before_action :set_androidversion, only: [:show, :edit, :update, :destroy]

  # GET /androidversions
  def index
    @androidversions = Androidversion.all

    @androidversions2 = { "android": [ { "ver": "1.5", "name": "Cupcake", "api": "API level 3" },
      { "ver": "1.6", "name": "Donut", "api": "API level 4" },
      { "ver": "2.0 - 2.1", "name": "Eclair", "api": "API level 5 - 7" },
      { "ver": "2.2", "name": "Froyo", "api": "API level 8" },
      { "ver": "2.3", "name": "Gingerbread", "api": "API level 9 - 10" },
      { "ver": "3.0 - 3.2", "name": "Honeycomb", "api": "API level 11 - 13" },
      { "ver": "4.0", "name": "Ice Cream Sandwich", "api": "API level 14 - 15" },
      { "ver": "4.1 - 4.3", "name": "JellyBean", "api": "API level 16 - 18" },
      { "ver": "4.4", "name": "KitKat", "api": "API level 19" },
      { "ver": "5.0 - 5.1", "name": "Lollipop", "api": "API level 21 - 22" },
      { "ver": "6.0", "name": "Marshmallow", "api": "API level 23" },
      { "ver": "7.0", "name": "Nougat", "api": "API level 24" } ]  }.to_json

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

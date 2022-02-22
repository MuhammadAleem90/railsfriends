class FrienddsController < ApplicationController
  before_action :set_friendd, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except:[:index, :show]

  # GET /friendds or /friendds.json
  def index
    @friendds = Friendd.all
  end

  # GET /friendds/1 or /friendds/1.json
  def show
  end

  # GET /friendds/new
  def new
    @friendd = Friendd.new
  end

  # GET /friendds/1/edit
  def edit
  end

  # POST /friendds or /friendds.json
  def create
    @friendd = Friendd.new(friendd_params)

    respond_to do |format|
      if @friendd.save
        format.html { redirect_to friendd_url(@friendd), notice: "Friendd was successfully created." }
        format.json { render :show, status: :created, location: @friendd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @friendd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friendds/1 or /friendds/1.json
  def update
    respond_to do |format|
      if @friendd.update(friendd_params)
        format.html { redirect_to friendd_url(@friendd), notice: "Friendd was successfully updated." }
        format.json { render :show, status: :ok, location: @friendd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @friendd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friendds/1 or /friendds/1.json
  def destroy
    @friendd.destroy

    respond_to do |format|
      format.html { redirect_to friendds_url, notice: "Friendd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friendd
      @friendd = Friendd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friendd_params
      params.require(:friendd).permit(:first_name, :last_name, :email, :phone, :twitter, :user_id)
    end
end

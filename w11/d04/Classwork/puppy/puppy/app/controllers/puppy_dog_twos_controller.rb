class PuppyDogTwosController < ApplicationController
  before_action :set_puppy_dog_two, only: [:show, :edit, :update, :destroy]

  # GET /puppy_dog_twos
  # GET /puppy_dog_twos.json
  def index
    @puppy_dog_twos = PuppyDogTwo.all
  end

  # GET /puppy_dog_twos/1
  # GET /puppy_dog_twos/1.json
  def show
  end

  # GET /puppy_dog_twos/new
  def new
    @puppy_dog_two = PuppyDogTwo.new
  end

  # GET /puppy_dog_twos/1/edit
  def edit
  end

  # POST /puppy_dog_twos
  # POST /puppy_dog_twos.json
  def create
    @puppy_dog_two = PuppyDogTwo.new(puppy_dog_two_params)

    respond_to do |format|
      if @puppy_dog_two.save
        format.html { redirect_to @puppy_dog_two, notice: 'Puppy dog two was successfully created.' }
        format.json { render :show, status: :created, location: @puppy_dog_two }
      else
        format.html { render :new }
        format.json { render json: @puppy_dog_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /puppy_dog_twos/1
  # PATCH/PUT /puppy_dog_twos/1.json
  def update
    respond_to do |format|
      if @puppy_dog_two.update(puppy_dog_two_params)
        format.html { redirect_to @puppy_dog_two, notice: 'Puppy dog two was successfully updated.' }
        format.json { render :show, status: :ok, location: @puppy_dog_two }
      else
        format.html { render :edit }
        format.json { render json: @puppy_dog_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puppy_dog_twos/1
  # DELETE /puppy_dog_twos/1.json
  def destroy
    @puppy_dog_two.destroy
    respond_to do |format|
      format.html { redirect_to puppy_dog_twos_url, notice: 'Puppy dog two was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puppy_dog_two
      @puppy_dog_two = PuppyDogTwo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def puppy_dog_two_params
      params.require(:puppy_dog_two).permit(:name, :breed, :cuteness)
    end
end

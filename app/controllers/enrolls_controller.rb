class EnrollsController < ApplicationController
  before_action :set_enroll, only: [:show, :edit, :update, :destroy]

  # GET /enrolls
  # GET /enrolls.json
  def index
    @enrolls = Enroll.all
  end

  # GET /enrolls/1
  # GET /enrolls/1.json
  def show
  end

  # GET /enrolls/new
  def new
    @enroll = Enroll.new
  end

  # GET /enrolls/1/edit
  def edit
    # @enroll.course_id = Course.find(@enroll.course_id).course
  end

  # POST /enrolls
  # POST /enrolls.json
  def create
    processed = processed_params(enroll_params)
    @enroll = Enroll.new(processed)

    respond_to do |format|
      if @enroll.save
        format.html { redirect_to @enroll, notice: 'Enroll was successfully created.' }
        format.json { render :show, status: :created, location: @enroll }
      else
        format.html { render :new }
        format.json { render json: @enroll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enrolls/1
  # PATCH/PUT /enrolls/1.json
  def update
    processed = processed_params(enroll_params)
    respond_to do |format|
      if @enroll.update(processed)
        format.html { redirect_to @enroll, notice: 'Enroll was successfully updated.' }
        format.json { render :show, status: :ok, location: @enroll }
      else
        format.html { render :edit }
        format.json { render json: @enroll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrolls/1
  # DELETE /enrolls/1.json
  def destroy
    @enroll.destroy
    respond_to do |format|
      format.html { redirect_to enrolls_url, notice: 'Enroll was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enroll
      @enroll = Enroll.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enroll_params
      params.require(:enroll).permit(:student_id, :course, :course_name, :percentage, :lettergrade)
    end

    def processed_params args
      if @enroll && @enroll.persisted?
        args[:course_id] = Course.find_by({course: args[:course_name]}).id
        args.delete(:course_name)
      else 
        args[:course_id] = Course.find_by({course: args[:course]}).id
        args.delete(:course)          
      end
      return args
    end
end

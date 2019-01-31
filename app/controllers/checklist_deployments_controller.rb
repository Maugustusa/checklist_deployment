class ChecklistDeploymentsController < ApplicationController
  before_action :set_checklist_deployment, only: [:show, :edit, :update, :destroy]

  # GET /checklist_deployments
  # GET /checklist_deployments.json
  def index
    @checklist_deployments = ChecklistDeployment.all
  end

  # GET /checklist_deployments/1
  # GET /checklist_deployments/1.json
  def show
  end

  # GET /checklist_deployments/new
  def new
    @checklist_deployment = ChecklistDeployment.new
  end

  # GET /checklist_deployments/1/edit
  def edit
  end

  # POST /checklist_deployments
  # POST /checklist_deployments.json
  def create
    @checklist_deployment = ChecklistDeployment.new(checklist_deployment_params)

    respond_to do |format|
      if @checklist_deployment.save
        format.html { redirect_to @checklist_deployment, notice: 'Checklist deployment was successfully created.' }
        format.json { render :show, status: :created, location: @checklist_deployment }
      else
        format.html { render :new }
        format.json { render json: @checklist_deployment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /checklist_deployments/1
  # PATCH/PUT /checklist_deployments/1.json
  def update
    respond_to do |format|
      if @checklist_deployment.update(checklist_deployment_params)
        format.html { redirect_to @checklist_deployment, notice: 'Checklist deployment was successfully updated.' }
        format.json { render :show, status: :ok, location: @checklist_deployment }
      else
        format.html { render :edit }
        format.json { render json: @checklist_deployment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checklist_deployments/1
  # DELETE /checklist_deployments/1.json
  def destroy
    @checklist_deployment.destroy
    respond_to do |format|
      format.html { redirect_to checklist_deployments_url, notice: 'Checklist deployment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checklist_deployment
      @checklist_deployment = ChecklistDeployment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def checklist_deployment_params
      params.require(:checklist_deployment).permit(:title, :description)
    end
end

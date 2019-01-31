require 'test_helper'

class ChecklistDeploymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @checklist_deployment = checklist_deployments(:one)
  end

  test "should get index" do
    get checklist_deployments_url
    assert_response :success
  end

  test "should get new" do
    get new_checklist_deployment_url
    assert_response :success
  end

  test "should create checklist_deployment" do
    assert_difference('ChecklistDeployment.count') do
      post checklist_deployments_url, params: { checklist_deployment: { description: @checklist_deployment.description, title: @checklist_deployment.title } }
    end

    assert_redirected_to checklist_deployment_url(ChecklistDeployment.last)
  end

  test "should show checklist_deployment" do
    get checklist_deployment_url(@checklist_deployment)
    assert_response :success
  end

  test "should get edit" do
    get edit_checklist_deployment_url(@checklist_deployment)
    assert_response :success
  end

  test "should update checklist_deployment" do
    patch checklist_deployment_url(@checklist_deployment), params: { checklist_deployment: { description: @checklist_deployment.description, title: @checklist_deployment.title } }
    assert_redirected_to checklist_deployment_url(@checklist_deployment)
  end

  test "should destroy checklist_deployment" do
    assert_difference('ChecklistDeployment.count', -1) do
      delete checklist_deployment_url(@checklist_deployment)
    end

    assert_redirected_to checklist_deployments_url
  end
end

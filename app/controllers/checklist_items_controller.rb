class ChecklistItemsController < ApplicationController
    before_action :set_checklist

def create
    @checklist_item = @checklist.checklist_item.create(checklist_item_params)
    redirect_to @checklist
end

private

def set_checklist
    @checklist = CheckList.find(params [:checklist_id])
end

def checklist_item_params
    params[:checklist_item].permit(:content)
end

end


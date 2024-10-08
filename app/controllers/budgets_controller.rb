class BudgetsController < ApplicationController
    before_action :authenticate_user!
    def index 
        @budgets = Budget.all
    end

    def new
        @budget = current_user.budgets.build
        @budget.build_income
    end

    def create 
        @budget = current_user.budgets.build(budget_params)
        if @budget.save
            redirect_to @budget, notice: "Budget sucessfully created"
        else
            render :new 
        end
    end

    def show 
        @budget = Budget.find(params[:id])
    end

    private
    def budget_params
        params.require(:budget).permit(
            :month,
            income_attributes: [:paycheck_1, :paycheck_2],
        
        )
    end
end

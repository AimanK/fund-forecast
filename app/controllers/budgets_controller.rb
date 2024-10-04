class BudgetsController < ApplicationController
    def index 
        @budgets = Budget.all
    end

    def new
        @budget = Budget.new
        @budget.categories.build
    end

    def create 
        @budget = Budget.new(budget_params)
        if @budget.save
            redirect_to @budget, notice: "Budget created sucessfully"
        else
            render :new 
        end
    end

    def show 
        @budget = Budget.find(params[:id])
    end

    def prompt

    end

    private
    def budget_params
        params.require(:budget).permit(:month, :total_income, :total_expenses, categories_attributes: [:id, :name, :_destroy])
    end
end

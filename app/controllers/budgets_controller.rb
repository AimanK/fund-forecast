class BudgetsController < ApplicationController
    before_action :authenticate_user!
    def index 
        @budgets = Budget.all
    end

    def new
        @budget = current_user.budgets.build
        @budget.build_income
        @budget.build_giving
        @budget.build_saving
        @budget.build_housing
        @budget.build_transportation
        @budget.build_food
        @budget.build_personal
        @budget.build_lifestyle
        @budget.build_health
        @budget.build_insurance
        @budget.build_debt
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
            giving_attributes: [:charity],
            saving_attributes: [:savings_amount],
            housing_attributes: [:housing_payment, :water, :natural_gas, :electricity, :cable, :trash],
            transportation_attributes: [:gasoline, :maintenance],
            food_attributes: [:groceries, :restaurants],
            personal_attributes: [:clothing, :phone, :fun_money, :hygiene, :subscriptions],
            lifestyle_attributes: [:pet_care, :child_care, :entertainment, :miscellaneous],
            health_attributes: [:gym, :health_products, :doctor_visits],
            insurance_attributes: [:health_insurance, :life_insurance, :car_insurance, :home_insurance, :identity_insurance],
            debt_attributes: [:car_payment, :student_loan, :credit_card, :personal_debt]
        )
    end
end

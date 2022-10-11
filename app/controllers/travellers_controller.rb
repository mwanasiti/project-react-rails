class TravellersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :update_errors

    def index
        travellers = Traveller.all
        render json: travellers
    end

    def show
        traveller = Traveller.find_by(id: params[:id])
        if traveller
            render json: traveller, status: :ok
        else
            not_found_response
        end
    end


    def update
        traveller = Traveller.find_by!(id: params[:id])
        traveller.update!(update_params)
        render json: traveller, status: :created
    end

    private

    def update_params
        params.permit(:first_name, :last_name, :email, :mobile)
    end


    def destroy
        traveller = Traveller.find_by(id: params[:id])
        if traveller
            traveller.destroy
            render json: {}
        else
            not_found_response
        end

    private

    def not_found_response
            render json: {error:"Traveller not found"}, status: :not_found
        end
end

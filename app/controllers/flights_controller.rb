class FlightsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        flights = Flight.all
        render json: flights, status: :ok
    end

    def show
        flight = Flight.find_by!(id: params[:id])
        render json: flight, status: :ok
    end

    private

    def render_not_found_response
        render json: {error: "flight not found"}, status: :not_found
    end
end

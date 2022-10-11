class TravellerFlightsController < ApplicationController
    def create
        traveller_flight = TravellerFlight.create(travflight_params)
        if traveller_flight.valid?
            render json: traveller_flight, status: :created
        else
            render json: {errors: traveller_flight.errors.full_messages}, status: :unprocessable_entity
        end
    end

    # def update
    #     traveller_flight = TravellerFlight.find_by!(id: params[:id])
    #     traveller_flight.update!(update_params)
    #     render json: traveller_flight, status: :created
    # end

    # private

    # def update_params
    #     params.permit(:first_name, :last_name, :email, :mobile)
    # end


    # def destroy
    #     traveller_flight = TravellerFlight.find_by(id: params[:id])
    #     if traveller_flight
    #         traveller_flight.destroy
    #         render json: {}
    #     else
    #         not_found_response
    #     end


    private

    # def not_found_response
    #     render json: {error:"Traveller not found"}, status: :not_found
    # end

    def travflight_params
        params.permit(:flight_id, :traveller_id)
    end
end

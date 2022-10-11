class UserProfilesController < ApplicationController
    def create
        user_profile = UserProfile.create(userprofile_params)
        if user_profile.valid?
            render json: user_profile, status: :created
        else
            render json: {errors: user_profile.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update
        user_profile = UserProfile.find_by!(id: params[:id])
        user_profile.update!(update_params)
        render json: user_profile, status: :created
    end

    private

    def userprofile_params
        params.permit(:name, :password)
    end
end

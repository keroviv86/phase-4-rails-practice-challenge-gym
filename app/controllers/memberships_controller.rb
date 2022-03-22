class MembershipsController < ApplicationController
    def create
        membership = Membership.create!(membership_params)
        render json: membership, status: :created
    rescue ActiveRecord::RecordInvalid => invalid
        render json: {errors: invalid.record.errors}, status: :unprocessable_entity
    end
    
    def index
        render json: Membership.all 
    end

    private
    def membership_params
        params.permit(:gym_id, :client_id, :charge)
    end
end

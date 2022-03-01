class GymsController < ApplicationController
    def show  
        gym=find_gym
        if gym 
            render json: gym
        else 
            render json: {error: "Gym not found"}, status: :not_found
        end
    end


    private
    def find_gym
        gym = Gym.find(params[:id])
    end

end

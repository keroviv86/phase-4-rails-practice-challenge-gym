class GymsController < ApplicationController
    def show  
        gym=find_gym
        if gym 
            render json: gym
        else 
            render json: {error: "Gym not found"}, status: :not_found
        end
    end

    def destroy
        gym=find_gym
        if gym 
            gym.destroy
            head: no_content
        else 
            render json {error: "gym not found"}, status: :not_found


    private
    def find_gym
        gym = Gym.find(params[:id])
    end

end

class ClientsController < ApplicationController
    def show 
        client=find_client
        if client 
            render json: client
        else 
            render json: {error: "Client not found"}, status: :not_found
        end
    end

    private 
    def find_client
        client= Client.find(params[:id])
    end
end

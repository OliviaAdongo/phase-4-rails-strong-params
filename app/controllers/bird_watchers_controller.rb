class BirdWatchersController < ApplicationController
    def index
        watchers = BirdWatcher.all 

        render json: watchers
    end
    def show
        ndege = BirdWatcher.find_by(id: params[:id])
    if ndege
      render json: ndege
    else
      render json: { error: "Bird not found" }, status: :not_found
    end
    end
    def create
        witcher = BirdWatcher.create(
            name: params[:name],
            email: params[:email],
            profile_image: params[:profile_image],
            favorite_species: params[:favorite_species],
            admin: params[:admin]
          )
          
          render json: witcher
    end
end

module Api
  module V1
    class TravellersController < ApplicationController
      def index
        render json: Traveller.all
      end

      def show
        render json: Traveller.find(params[:id])
      end
      #
      # def create
      #   traveller = Traveller.new(traveller_params)
      #   if traveller.save
      #     render json: traveller
      #   else
      #     render json: traveller.errors, status: 500
      #   end
      # end
      #
      # def update
      #   traveller = Traveller.find(params[:id])
      #   if traveller.update(traveller_params)
      #     render json: traveller
      #   else
      #     render json: traveller.errors, status: 500
      #   end
      # end
      #
      # def destroy
      #   traveller = Traveller.find_by(id: params[:id])
      #   if traveller
      #     traveller.destroy
      #     head :ok
      #   else
      #     render json: {"error" => "traveller with id of #{params[:id]} not found"}, status: 404
      #   end
      # end
      #
      # private
      #
      #   def traveller_params
      #     params.require(:traveller).permit(:name, :breed, :temperament, :weight)
      #   end
    end
  end
end

# Api::V1::TravellersController

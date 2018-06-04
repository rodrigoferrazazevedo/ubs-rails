module Api
  module V1
    class FindUbsController < ApplicationController
      #List all UBS
      def index
        ubs = Ubs.order('created_at DESC');
        render json: {status: 'SUCCESS', message: 'UBS list', data: ubs}, status: :ok
      end
      #List UBS from Latitude/longitude values
      def show
        #ubs = Ubs.find(params[:id])
        ubs = Ubs.where("(vlr_latitude = :lat) and (vlr_longitude = :lon)",{lat: params[:latitude], lon: params[:longitude]})
        render json: {status: 'SUCCESS', message: 'UBS list based on latitude/longitude values', data: ubs}, status: :ok 
      end
    end
  end
end

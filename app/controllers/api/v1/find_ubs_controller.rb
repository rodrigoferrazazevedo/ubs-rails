module Api
  module V1
    class FindUbsController < ApplicationController
      def index
        ubs = Ubs.order('created_at DESC');
        render json: {status: 'SUCCESS', message: 'UBS List', data: ubs}, status: :ok
      end
    end
  end
end

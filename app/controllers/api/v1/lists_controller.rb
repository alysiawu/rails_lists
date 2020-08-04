module Api 
    module V1
        class ListsController < ApplicationController
            def index
                lists = List.order('created_at DESC')
                render json: { status: 'SUCCESS', message: 'Loaded Lists', data: lists}, status: :ok
            end
        end
    end
end
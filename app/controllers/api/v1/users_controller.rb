module Api 
    module V1
        class UsersController < ApplicationController
            def index
                users = User.order('created_at DESC')
                render json: { status: 'SUCCESS', message: 'Loaded Lists', data: users}, status: :ok
            end
        end
    end
end
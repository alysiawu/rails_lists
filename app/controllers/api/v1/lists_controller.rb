module Api 
    module V1
        class ListsController < ApplicationController
            def index
                lists = List.order('created_at DESC')
                render json: { status: 'SUCCESS', message: 'Loaded Lists', data: lists}, status: :ok
            end

            def show
                list = List.find(params[:id])
                render json: { status: 'SUCCESS', message: 'Loaded List', data: list},status: :ok
            end

            def create
                list = List.new(list_params)
                if list.save
                    render json: { status: 'SUCCESS', message: 'Saved list', data: list},status: :ok
                else 
                    render json: { status: 'ERROR', message: 'list not saved', data: list.errors},status: :unprocessable_entity
                end
                    
            end

            def destroy
                list = List.find(params[:id])
                list.destroy
                render json: { status: 'SUCCESS', message: 'Deleted List', data: list},status: :ok
            end

            def update 
                list = List.find(params[:id])
                if list.update_attributes(article_params) # update_attributes 
                    render json: { status: 'SUCCESS', message: 'Updated List', data: list},status: :ok
                else
                    render json: { status: 'ERROR', message: 'List not updated', data: list.errors},status: :unprocessable_entity
                end
            end 

            private 
            def list_params
                params.permit(:title)
            end

        end
    end
end
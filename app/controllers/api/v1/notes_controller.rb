module Api 
    module V1
        class NotesController < ApplicationController
            def index
                notes = Note.order('created_at DESC')
                render json: { status: 'SUCCESS', message: 'Loaded Lists', data: notes}, status: :ok
            end
        end
    end
end
class MiniaturesController < ApplicationController

    get '/miniatures' do
        miniatures = Miniature.all
        miniatures.to_json
    end

    get '/miniatures/:id' do
        miniature = Miniature.find_by(id: params[:id])
        miniature.to_json(include: :miniature_set)
    end

end
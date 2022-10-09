class MiniatureSetsController < ApplicationController

    get '/miniature_sets' do
        miniature_sets = MiniatureSet.all
        miniature_sets.to_json(include: :miniatures)
    end

    get '/miniature_sets/:id' do
        miniature_set = MiniatureSet.find_by(id: params[:id])
        miniature_set.to_json(include: :miniatures)
    end

end
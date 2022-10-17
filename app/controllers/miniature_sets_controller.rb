class MiniatureSetsController < ApplicationController

    get '/miniature_sets' do
        MiniatureSet.order(:name).to_json(include: :miniatures)
    end

    get '/miniature_sets/:id' do
        @miniature_set = MiniatureSet.find(params[:id])
        @miniature_set.to_json(include: :miniatures)
    end

    post '/miniature_sets' do
        @miniature_set = MiniatureSet.create(params)
        @miniature_set.to_json
    end

    patch '/miniature_sets/:id' do
        @miniature_set = MiniatureSet.find(params[:id])
        @miniature_set.update(
            name: params[:name],
            year: params[:year]
            )
        @miniature_set.to_json
    end

    delete '/miniature_sets/:id' do
        @miniature_set = MiniatureSet.find(params[:id])
        @miniature_set.destroy
        @miniature_set.to_json
    end

end
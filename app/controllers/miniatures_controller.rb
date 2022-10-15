class MiniaturesController < ApplicationController

    get '/miniatures' do
        Miniature.all.to_json(include: :miniature_set)
    end

    get '/miniatures/new' do
        Miniature.last(6).to_json(include: :miniature_set)
    end

    get '/miniatures/:id' do
        @miniature = Miniature.find(params[:id])
        @miniature.to_json(include: :miniature_set)
    end

    post '/miniatures' do
        @miniature = Miniature.create(params)
        @miniature.to_json
    end

    patch '/miniatures/:id' do
        @miniature = Miniature.find(params[:id])
        @miniature.update(params)
        @miniature.to_json
    end

    delete '/miniatures/:id' do
        @miniature = Miniature.find(params[:id])
        @miniature.destroy
        @miniature.to_json
    end

end
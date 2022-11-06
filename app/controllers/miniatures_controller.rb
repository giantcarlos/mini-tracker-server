class MiniaturesController < ApplicationController

    get '/miniatures' do
        Miniature.order(:name).to_json(include: :miniature_set)
    end

    get '/miniatures/new' do
        Miniature.last(6).to_json(include: :miniature_set)
    end

    get '/miniatures/:id' do
        @miniature = Miniature.find(params[:id])
        @miniature.to_json(include: :miniature_set)
    end

    get '/miniature_sets/:miniature_set_id/miniatures' do
        @miniature_set = MiniatureSet.find(params["miniature_set_id"])
        @miniature_set.miniatures.to_json(include: miniature_set)
    end

    post '/miniature_sets/:miniature_set_id/miniatures' do
        @miniature_set = MiniatureSet.find(params["miniature_set_id"])
        @miniature = @miniature_set.miniatures.build(params)
        @miniature.save
        @miniature.to_json
    end

    patch '/miniatures/:id' do
        @miniature = Miniature.find(params[:id])
        @miniature.update(
            name: params[:name],
            rarity: params[:rarity],
            size: params[:size],
            units: params[:units],
            img_url: params[:img_url]
            )
        @miniature.to_json
    end

    delete '/miniatures/:id' do
        @miniature = Miniature.find(params[:id])
        @miniature.destroy
        @miniature.to_json
    end

end
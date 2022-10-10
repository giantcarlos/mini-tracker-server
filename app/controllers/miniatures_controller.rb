class MiniaturesController < ApplicationController

    get '/miniatures' do
        miniature = Miniature.all
        miniature.to_json(include: :miniature_set)
    end

    get '/miniatures/:id' do
        miniature = Miniature.find(params[:id])
        miniature.to_json(include: :miniature_set)
    end

    post '/miniatures' do
        miniature = Miniature.create(
            name: params[:name], 
            rarity: params[:rarity],
            size: params[:size],
            units: params[:units],
            miniature_set_id: params[:miniature_set_id],
            img_url: params[:img_url])
        miniature.to_json
    end

    patch '/miniatures/:id' do
        miniature = Miniature.find(params[:id])
        miniature.update(
            name: params[:name], 
            rarity: params[:rarity],
            size: params[:size],
            units: params[:units],
            miniature_set_id: params[:miniature_set_id],
            img_url: params[:img_url])
        miniature.to_json
    end

    delete '/miniatures/:id' do
        miniature = Miniature.find(params[:id])
        miniature.destroy
        miniature.to_json
    end

end
class MiniatureSetsController < ApplicationController

    get '/miniature_sets' do
        miniature_sets = MiniatureSet.all
        miniature_sets.to_json(include: :miniatures)
    end

end
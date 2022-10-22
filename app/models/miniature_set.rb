class MiniatureSet < ActiveRecord::Base
    has_many :miniatures, dependent: :destroy
end
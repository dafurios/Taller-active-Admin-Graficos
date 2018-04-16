class Comment < ApplicationRecord
  belongs_to :post

  # #este metodo viene de la vista parcia de _chart
  #
  #   dentro de un metodo de clase self trae toda la infomacion de comment

  def self.created_by_day
    group_by_day(:created_at).count
  end

end

require 'dynamoid'

class BookRanking
  include Dynamoid::Document
  field :booknames, :string
  field :rank, :integer
  field :price_description, :string
  field :price, :integer
  field :author, :string
  field :date, :date
  field :source, :string
  field :prod_id, :string

  def self.destroy(id)
    find(id).destroy
  end

  def self.delete_all
    all.each(&:delete)
  end
end
  

class Subject
  include Mongoid::Document
  field :name, type: String
  field :status, type: Integer
  embedded_in :high_score
  # belongs_to :high_score
end

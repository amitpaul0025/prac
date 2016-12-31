class HighScore
  include Mongoid::Document
  field :game, type: String
  field :score, type: Integer

  embeds_many :subjects
  # has_many :subjects
  accepts_nested_attributes_for :subjects, :allow_destroy => true,
    :reject_if => :all_blank
  # after_save :up_redis

  def up_redis
  	$redis.hget
  end
end

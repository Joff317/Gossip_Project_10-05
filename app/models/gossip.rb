class Gossip < ApplicationRecord
   validates :title, length: {minimum: 3, maximum: 50}, presence: true
   validates :content, presence: true
   belongs_to :user
   has_many :tags

   def self.get_gossip_id(id)
      return Gossip.all[id.to_i - 1]
   end

end

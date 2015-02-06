class Gig < ActiveRecord::Base

	# has_many :reviews

	validates :venue  , presence: true
	validates :price , presence: true
	validates :date , presence: true
	validates :city , presence: true
	validates :artist , presence: true

##########################################
#
# 	C L A S S
#
##########################################

	def self.get_all(limit)
		order('created_at DESC').limit(limit)
	end

	def self.get_one(id)
		find_by(id: id)
	end

	def self.search(query)
		result = where("artist LIKE '%#{query}%' OR venue LIKE '%#{query}%'")
#		get_by_rating(result)
		result
	end

	def self.get_by_rating(entries)
		entries.sort {|x,y| y.avg_rating <=> x.avg_rating}
	end

##########################################
#
#  	I N S T A N C E
#
##########################################

	def avg_rating
		count = reviews.count
		count > 0 ? '%.2f' % (reviews.reduce(0) {|sum,x| sum + x.rating }.to_f / count) : '0.00'
	end

end


class Gig < ActiveRecord::Base

	has_many :comments

	validates :venue  , presence: true
	validates :price  , presence: true
	validates :price  ,	numericality: true
	validates :date   , presence: true
	validates :city   , presence: true
	validates :artist , presence: true
	
	# validates :city, 		format: { with: /\A[a-zA-Z]+\z/, 	message: "only allows letters" }
	# validates :venue,		format: { with: /\A[a-zA-Z0-9]+\z/, message: "only allows letters" }
	# validates :artist, 		format: { with: /\A[a-zA-Z0-9]+\z/, message: "only allows letters" }
	# validates :description,	format: { with: /\A[a-zA-Z0-9]+\z/, message: "only allows letters" }

	# validates :date_cannot_be_in_the_past 	, true

	def date_cannot_be_in_the_past
    	if date.present? && date < Date.today
      		errors.add(:date, "can't be in the past")
   		end
	end

##########################################
#
# 	C L A S S
#
##########################################

	def self.get_all(limit)
		order('date ASC').limit(limit)
	end

	def self.get_in_range(start_time, end_time)
		where("date > ?", start_time.beginning_of_day).where("date < ?", end_time.end_of_day).order('date ASC')
	end

	def self.get_one(id)
		find_by(id: id)
	end

	def self.search(query)
		query = query.downcase
		result = where("LOWER(artist) LIKE '%#{query}%' OR LOWER(venue) LIKE '%#{query}%' OR LOWER(city) LIKE '%#{query}%'")
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


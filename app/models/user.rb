class User < ApplicationRecord
  	has_many :user_tickets	
	has_many :tickets, :through => :user_tickets
	validates:phone, length: { in: 9..12 }
	validates:password,length: { in: 8..12 }
	#validates:email ,if: :mailext?

	def mailext?
		email.include?"@example.com"
	end
end



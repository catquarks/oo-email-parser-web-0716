require 'pry'
class EmailParser

	attr_accessor :emails
	attr_reader :parsed_emails

	def initialize(*emails)
		@emails = emails
		# @parsed_emails = []
	end

	def parse
		@emails.collect {|email| email.split(/,\s|\s/)}.flatten.uniq

		# @emails.collect {|email| email.split(/,\s|\s/)}.flatten.uniq! #=> why didn't this one work??? why does the ! result in nil??


		### this one worked until i tried using the ! but why???
		# @emails.each {|email| @parsed_emails << email.split(/,\s|\s/)}
		# @parsed_emails.flatten.uniq
	end

end

emails = "john@doe.com, person@somewhere.org"
parser = EmailParser.new(emails)
 
parser.parse
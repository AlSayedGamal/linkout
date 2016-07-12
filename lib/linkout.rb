require "linkout/version"
require "nokogiri"
require "sanitize"
require 'open-uri'

module Linkout
	class Profile
	  attr_accessor :url, :name,:basic_info, :full_info
		def initialize(profile_url, params={})
			@url = profile_url
			@doc = Nokogiri::HTML(open(@url))
		end
		def name
			@doc.xpath('//*[(@id = "name")]/text()').to_s
		end

		def basic_info
			current_title = Sanitize.fragment(@doc.css('.title').first).strip
			current_location = Sanitize.fragment(@doc.css('.locality').first).strip
			current_industry = Sanitize.fragment(@doc.css('.descriptor')[1]).strip
			{current_title: current_title, current_location:current_location, current_industry: current_industry }
		end
		def full_info
			{educations: [], experiences:[], certifications:[], languages:[], projects:[], skills:[], courses:[]}
		end
	end
end

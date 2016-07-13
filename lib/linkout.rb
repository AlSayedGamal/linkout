require "linkout/version"
require "nokogiri"
require "sanitize"
require 'open-uri'

module Linkout
	class Profile
	  attr_accessor :url, :name,:basic_info, :full_info, :clean_tags
		def initialize(profile_url, params={})
			@url = profile_url
			@doc = Nokogiri::HTML(open(@url))
		end
		def name
			@doc.xpath('//*[(@id = "name")]/text()').to_s
		end

		def basic_info
			@basics = {}
			@basics[:current_title] = Sanitize.fragment(@doc.css('.title').first).strip
			@basics[:current_location] = Sanitize.fragment(@doc.css('.locality').first).strip
			@basics[:current_industry] = Sanitize.fragment(@doc.css('.descriptor')[1]).strip
			return @basics
		end
		def full_info
			@full = {}
			@full[:educations] = @doc.css('.school').map { |data| clean_tags(data)}
			@full[:experiences] = @doc.css('.position').map { |data| clean_tags(data)}
			@full[:certifications] = @doc.css('.certification').map { |data| clean_tags(data)}
			@full[:languages] = @doc.css('.language').map { |data| clean_tags(data)}
			@full[:courses] = @doc.css('.course').map { |data| clean_tags(data)}
			@full[:projects] = @doc.css('.project').map { |data| clean_tags(data)}
			return @full
		end

		def clean_tags(data)
			Sanitize.fragment(data).strip
			Sanitize.fragment(data).strip
			Sanitize.fragment(data).strip
			Sanitize.fragment(data).strip
			Sanitize.fragment(data).strip
			Sanitize.fragment(data).strip
		end
	end
end

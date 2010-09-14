# == Schema Information
# Schema version: 20100909150914
#
# Table name: memberapps
#
#  id               :integer         not null, primary key
#  recommendation   :string(255)
#  recommended_name :string(255)
#  relationship     :string(255)
#  affiliation      :string(255)
#  advertisement    :string(255)
#  other            :string(255)
#  first_name       :string(255)
#  middle_name      :string(255)
#  last_name        :string(255)
#  address          :string(255)
#  city             :string(255)
#  state            :string(255)
#  zip              :integer
#  home_phone       :string(255)
#  work_phone       :string(255)
#  cell_phone       :string(255)
#  email_id         :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#

class Memberapp < ActiveRecord::Base
	#checking for required fields
	validates_presence_of :recommendation, :first_name, :last_name, :address, :city, :state, :zip, :home_phone, :email_id
	
	#validating input for email address
	EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates_format_of :email_id, :with => EmailRegex, :if => "!email_id.blank?"
	
	#validating input for any phone numbers entered
	Phoneformat = /\A[0-9]{3}+-[0-9]{3}+-[0-9]{4}+\z/i
	validates_format_of :home_phone, :with => Phoneformat, :if => "!home_phone.blank?"
	validates_format_of :work_phone, :with => Phoneformat, :if => "!work_phone.blank?"
	validates_format_of :cell_phone, :with => Phoneformat, :if => "!cell_phone.blank?"
	
	#validating to see if zip has got only integer values
	zipformat = /\A[0-9]{5}+\z/i
	validates_format_of :zip, :with => zipformat, :if => "!zip.blank?"
	
	#other validations
	validates_presence_of :affiliation, :if => :recommend_affiliation?
	def recommend_affiliation?
		recommendation == "affiliation"
	end
	
	validates_presence_of :recommended_name, :relationship, :if => :recommend_member?
	def recommend_member?
		recommendation == "member"
	end
end

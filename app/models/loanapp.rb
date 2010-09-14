# == Schema Information
# Schema version: 20100913162643
#
# Table name: loanapps
#
#  id                                 :integer         not null, primary key
#  account_number                     :integer
#  purpose_of_loan                    :string(255)
#  requested_loan_amount              :string(255)
#  loan_type                          :string(255)
#  recommendation                     :string(255)
#  recommended_name                   :string(255)
#  relationship                       :string(255)
#  affiliation                        :string(255)
#  advertisement                      :string(255)
#  other                              :string(255)
#  first_name                         :string(255)
#  middle_name                        :string(255)
#  last_name                          :string(255)
#  address                            :string(255)
#  city                               :string(255)
#  state                              :string(255)
#  zip                                :integer
#  years_at_address                   :string(255)
#  monthly_rent                       :string(255)
#  housing_type                       :string(255)
#  social_security_number             :string(255)
#  date_of_birth                      :string(255)
#  home_phone                         :string(255)
#  work_phone                         :string(255)
#  cell_phone                         :string(255)
#  best_time_daytime                  :string(255)
#  best_time_evening                  :string(255)
#  email_address                      :string(255)
#  employer                           :string(255)
#  employer_address                   :string(255)
#  employer_city                      :string(255)
#  employer_state                     :string(255)
#  employer_zip                       :integer
#  years_on_the_job                   :string(255)
#  position                           :string(255)
#  annual_income                      :string(255)
#  additional_income                  :string(255)
#  source_of_additional_income        :string(255)
#  joint_first_name                   :string(255)
#  joint_middle_name                  :string(255)
#  joint_last_name                    :string(255)
#  joint_address                      :string(255)
#  joint_city                         :string(255)
#  joint_state                        :string(255)
#  joint_zip                          :integer
#  joint_years_at_address             :string(255)
#  joint_monthly_rent                 :string(255)
#  joint_housing_type                 :string(255)
#  joint_social_security_number       :string(255)
#  joint_date_of_birth                :string(255)
#  joint_home_phone                   :string(255)
#  joint_work_phone                   :string(255)
#  joint_cell_phone                   :string(255)
#  best_time_in_day_to_call_joint     :string(255)
#  best_time_in_evening_to_call_joint :string(255)
#  joint_email_address                :string(255)
#  created_at                         :datetime
#  updated_at                         :datetime
#

class Loanapp < ActiveRecord::Base
#checking for required fields
	validates_presence_of :account_number, :purpose_of_loan, :requested_loan_amount, :loan_type, :recommendation, :first_name, :last_name, :address, :city, :state, :zip, :home_phone, :email_address, :social_security_number, :date_of_birth, :employer
	
	#validating input for email address
	EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates_format_of :email_address, :with => EmailRegex, :if => "!email_address.blank?"
	validates_format_of :joint_email_address, :with => EmailRegex, :if => "!joint_email_address.blank?"
	
	#validating input for any phone numbers entered
	Phoneformat = /\A[0-9]{3}+-[0-9]{3}+-[0-9]{4}+\z/i
	validates_format_of :home_phone, :with => Phoneformat, :if => "!home_phone.blank?"
	validates_format_of :work_phone, :with => Phoneformat, :if => "!work_phone.blank?"
	validates_format_of :cell_phone, :with => Phoneformat, :if => "!cell_phone.blank?"
	validates_format_of :joint_home_phone, :with => Phoneformat, :if => "!joint_home_phone.blank?"
	validates_format_of :joint_work_phone, :with => Phoneformat, :if => "!joint_work_phone.blank?"
	validates_format_of :joint_cell_phone, :with => Phoneformat, :if => "!joint_cell_phone.blank?"
	
	#validating input for any SSN entered
	SSNformat = /\A[0-9]{3}+-[0-9]{2}+-[0-9]{4}+\z/i
	validates_format_of :social_security_number, :with => SSNformat, :if => "!social_security_number.blank?"
	validates_format_of :joint_social_security_number, :with => SSNformat, :if => "!joint_social_security_number.blank?"
	
	#validating to see if zip has got only integer values and 5 digits
	zipformat = /\A[0-9]{5}+\z/i
	validates_format_of :zip, :with => zipformat, :if => "!zip.blank?"
	validates_format_of :employer_zip, :with => zipformat, :if => "!employer_zip.blank?"
	validates_format_of :joint_zip, :with => zipformat, :if => "!joint_zip.blank?"
	
	#validating to see if date(s) entered are valid
	#dateFormat = /\A[0-9]{2}+/[0-9]{2}+/[0-9]{2}+\z/i
	#validates_format_of :date_of_birth, :with => dateFormat, :if => "!date_of_birth.blank?"
	#validates_format_of :joint_date_of_birth, :with => dateFormat, :if => "!joint_date_of_birth.blank?"
	
	#other validations
	validates_presence_of :joint_first_name, :joint_last_name, :joint_address, 		 :joint_city, :joint_state, :joint_zip, :joint_social_security_number, 		 :joint_date_of_birth, :joint_home_phone, :joint_email_address,
	:if => :loan_type_joint?
	def loan_type_joint?
		loan_type == "joint"
	end
	
	validates_presence_of :affiliation, :if => :recommend_affiliation?
	def recommend_affiliation?
		recommendation == "affiliation"
	end

	validates_presence_of :recommended_name, :relationship, :if => :recommend_member?
	def recommend_member?
		recommendation == "member"
	end
end

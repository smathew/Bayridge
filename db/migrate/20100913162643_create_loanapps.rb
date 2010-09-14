class CreateLoanapps < ActiveRecord::Migration
  def self.up
    create_table :loanapps do |t|
      t.integer :account_number
      t.string :purpose_of_loan
      t.string :requested_loan_amount
      t.string :loan_type
      t.string :recommendation
      t.string :recommended_name
      t.string :relationship
      t.string :affiliation
      t.string :advertisement
      t.string :other
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :years_at_address
      t.string :monthly_rent
      t.string :housing_type
      t.string :social_security_number
      t.string :date_of_birth
      t.string :home_phone
      t.string :work_phone
      t.string :cell_phone
      t.string :best_time_daytime
      t.string :best_time_evening
      t.string :email_address
      t.string :employer
      t.string :employer_address
      t.string :employer_city
      t.string :employer_state
      t.integer :employer_zip
      t.string :years_on_the_job
      t.string :position
      t.string :annual_income
      t.string :additional_income
      t.string :source_of_additional_income
      t.string :joint_first_name
      t.string :joint_middle_name
      t.string :joint_last_name
      t.string :joint_address
      t.string :joint_city
      t.string :joint_state
      t.integer :joint_zip
      t.string :joint_years_at_address
      t.string :joint_monthly_rent
      t.string :joint_housing_type
      t.string :joint_social_security_number
      t.string :joint_date_of_birth
      t.string :joint_home_phone
      t.string :joint_work_phone
      t.string :joint_cell_phone
      t.string :best_time_in_day_to_call_joint
      t.string :best_time_in_evening_to_call_joint
      t.string :joint_email_address

      t.timestamps
    end
  end

  def self.down
    drop_table :loanapps
  end
end

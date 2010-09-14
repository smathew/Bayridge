class CreateMemberapps < ActiveRecord::Migration
  def self.up
    create_table :memberapps do |t|
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
      t.string :home_phone
      t.string :work_phone
      t.string :cell_phone
      t.string :email_id

      t.timestamps
    end
  end

  def self.down
    drop_table :memberapps
  end
end

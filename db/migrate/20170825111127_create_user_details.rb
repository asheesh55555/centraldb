class CreateUserDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :user_details do |t|
      t.string :number
      t.string :gender
      t.string :name_set
      t.string :title
      t.string :given_name
      t.string :middle_initial
      t.string :surname
      t.string :street_address
      t.string :city
      t.string :state
      t.string :state_full
      t.string :zip_code
      t.string :country
      t.string :country_full
      t.string :email_address
      t.string :username
      t.string :password
      t.string :browser_user_agent
      t.string :telephone_number
      t.string :telephone_country_code
      t.string :mothers_maiden
      t.string :birthday
      t.string :age
      t.string :cc_type
      t.string :cc_number
      t.string :cvv2
      t.string :cc_expires
      t.string :national_id
      t.string :ups
      t.string :western_union_mtcn
      t.string :money_gram_mtcn
      t.string :color
      t.string :occupation
      t.string :company
      t.string :vehicle
      t.string :domain
      t.string :guid
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end

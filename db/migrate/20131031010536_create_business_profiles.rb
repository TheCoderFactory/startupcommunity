class CreateBusinessProfiles < ActiveRecord::Migration
  def change
    create_table :business_profiles do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :tagline
      t.text :about
      t.string :url
      t.string :blog
      t.string :twitter
      t.string :facebook
      t.string :linkedin
      t.string :google
      t.string :github
      t.string :image
      t.string :slug
      t.integer :employees
      t.boolean :hiring
      t.float :latitude
      t.float :longitude
      t.integer :owner

      t.timestamps
    end
  end
end

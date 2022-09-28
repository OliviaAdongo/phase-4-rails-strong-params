class CreateBirdWatchers < ActiveRecord::Migration[6.1]
  def change
    create_table :bird_watchers do |t|
      t.string :name
      t.string :email
      t.string :profile_image
      t.string :favoirite_species
      t.string :admin

      t.timestamps
    end
  end
end

class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :site

      t.timestamps
    end
  end
end

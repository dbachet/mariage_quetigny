class CreateHotels < ActiveRecord::Migration
  def self.up
    create_table :hotels do |t|
      t.string :name
      t.string :address_street
      t.string :address_city
      t.string :address_post_code
      t.string :website
      t.string :email
      t.integer :distance_to_la_barca
      t.integer :double_room_price
      t.string :phone_nr
      t.string :fax_nr
      t.string :extra_description

      t.timestamps
    end
  end

  def self.down
    drop_table :hotels
  end
end

class CreateBikes < ActiveRecord::Migration[5.2]
  def change
    create_table :bikes do |t|
      t.string :title
      t.string :brand
      t.string :model
      t.integer :year
      t.integer :category
      t.integer :sub_category
      t.string :spokes_id
      t.string :travel
      t.float :msrp
      t.float :weight
      t.string :handlebars
      t.string :shifters
      t.string :brake_levers
      t.string :brake_calipers
      t.string :stem
      t.string :headset
      t.string :fork
      t.string :seatpost
      t.string :saddle
      t.string :front_derailleur
      t.string :crank
      t.string :bottom_bracket
      t.string :rear_derailleur
      t.string :shock
      t.string :cassette
      t.string :front_rim
      t.string :rear_rim
      t.string :front_hub
      t.string :rear_hub
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

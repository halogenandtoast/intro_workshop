class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.body :text

      t.timestamps
    end
  end
end

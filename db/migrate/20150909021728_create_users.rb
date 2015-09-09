class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :token
      t.string :image
      t.string :nickname
      t.string :uid
      t.string :provider
      t.string :email
      t.timestamps null: false
    end
  end
end

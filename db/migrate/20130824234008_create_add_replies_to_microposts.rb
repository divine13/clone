class CreateAddRepliesToMicroposts < ActiveRecord::Migration
  def change
    create_table :add_replies_to_microposts do |t|
             t.integer :to
    		add_column :users, :to, :integer


      t.timestamps
    end
  end
end

class CreateParents < ActiveRecord::Migration
  def self.up
    create_table :parents do |t|
      t.string :name
      t.string :telehphone
      t.string :email
	  t.integer :sutdent_id
	  
      t.timestamps
    end
  end

  def self.down
    drop_table :parents
  end
end

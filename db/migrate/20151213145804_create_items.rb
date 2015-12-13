class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :user, index: true
      t.string :url
      t.decimal :total_cost
      t.decimal :paid_cost
      t.boolean :is_express

      t.timestamps
    end
  end
end

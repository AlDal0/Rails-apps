class CreateWebhooks < ActiveRecord::Migration[5.2]
  def change
    create_table :webhooks do |t|
      t.string :kind
      t.string :timestamp

      t.timestamps
    end
  end
end

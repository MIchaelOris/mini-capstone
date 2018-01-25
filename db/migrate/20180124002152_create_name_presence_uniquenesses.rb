class CreateNamePresenceUniquenesses < ActiveRecord::Migration[5.1]
  def change
    create_table :name_presence_uniquenesses do |t|

      t.timestamps
    end
  end
end

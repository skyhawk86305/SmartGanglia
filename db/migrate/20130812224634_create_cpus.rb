class CreateCpus < ActiveRecord::Migration
  def change
    create_table :cpus do |t|

      t.timestamps
    end
  end
end

class CreateTvShows < ActiveRecord::Migration[6.0]
  def change
    create_table :tv_shows do |t|
    	t.references :channel
    	t.text :name
    	t.integer :start_time
    	t.integer :end_time

      t.timestamps
    end
  end
end

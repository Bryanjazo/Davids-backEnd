class CreateApiV1Scrapers < ActiveRecord::Migration[6.1]
  def change
    create_table :api_v1_scrapers do |t|

      t.timestamps
    end
  end
end

class CreateApiV1Cryptos < ActiveRecord::Migration[6.1]
  def change
    create_table :api_v1_cryptos do |t|

      t.timestamps
    end
  end
end

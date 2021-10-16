class CreateApiV1LearnCryptos < ActiveRecord::Migration[6.1]
  def change
    create_table :api_v1_learn_cryptos do |t|
      t.string :title 
      t.string :sub_title
      t.string :message
      t.string :steps
      t.string :download_guide 
      t.string :download_guide_text
      t.string :blochain_reading
      t.string :blockchain_text
      t.string :coming_soon
      t.string :coming_soon_text
      t.string :header 
      t.string :img_url
      t.string :catergoryByDate
      t.string :date 
      t.text :blog_text

      t.timestamps
    end
  end
end

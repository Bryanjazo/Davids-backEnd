class CreateApiV1Recents < ActiveRecord::Migration[6.1]
  def change
    create_table :api_v1_recents do |t|
      t.string :header 
      t.string :img_url
      t.string :catergoryByDate
      t.string :date 
      t.text :blog_text
      t.string :twitter_url
      t.string :mail_url
      t.string :facebook_url
      t.string :linkedIn_url
      t.string :telegram_url
      t.string :whatsApp_url
      t.timestamps
    end
  end
end

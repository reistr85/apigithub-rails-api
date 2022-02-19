class CreateRepositories < ActiveRecord::Migration[7.0]
  def change
    create_table :repositories do |t|
      t.string :github_id
      t.string :url
      t.string :avatar_url
      t.string :stargazers_count
      t.string :name
      t.text :description
      t.string :situation, :default => 'active'
      t.timestamps
    end
  end
end

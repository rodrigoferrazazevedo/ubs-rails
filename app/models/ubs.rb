class Ubs < ApplicationRecord
    require 'csv'

    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
          Ubs.create! rows.to_hash
        end
    end
    
end

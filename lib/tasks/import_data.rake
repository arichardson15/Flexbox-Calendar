require 'csv'
  desc "Import data from csv"
  task :import_data => [:environment] do
    [[Technician, 'technicians'],
     [Location, 'locations'],
     [WorkOrder, 'work_orders']].each do |table, string|
      file = "db/app_data/#{string}.csv"
      CSV.foreach(file, :headers => true, :header_converters => :symbol ) do |item|

        # item.time = DateTime.new('%m','%d','%y','%H','%M')
        item = item.to_h
        existing = table.where(id: item[:id]).first

        if existing.nil?
          table.create!(item)

        else
        existing.update_attributes(item)

        end
      end
    end
  end
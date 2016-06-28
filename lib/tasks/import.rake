prev=nil
namespace :import do
	desc "imports data from a csv file"
	task :data => :environment do
		require 'csv'
		Dir.foreach('/home/piyush/newapp/public/assets/spreadsheet') do |x|
			z='/home/piyush/newapp/public/assets/spreadsheet/'
			z +="#{x}"
			ff=x.split('.').first
			fff=ff
			# puts z
			puts type
			if !(x=="." || x=="..")
				# puts x
				CSV.foreach(z) do |row|
					
					if row[0].nil? 
						row[0]=prev
				  	end

					name=row[0]
					value=row[1]
					i=0
					height=row[1].split('_').second
					width=row[1].split('_').last
					height=height.to_i
					width=width.to_i
					
					
					prev=row[0]
					puts row.inspect
		      
					Product.create(name: name, value: value,height: height,width: width,type: fff)
				end
			end
		end
		list=["B1_shrink_700_800","vvf_700_400","vrfg_700_400"]
		puts list
	end
end	
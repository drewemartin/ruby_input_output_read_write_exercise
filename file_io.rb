file = File.open("stuff.txt", "r")
puts file.read #will puts file contents, loads entire file to memory
file.close #good habit to close file

File.open("stuff.txt", "r") do |file| #most common way to open and close files
puts file.read
end 

File.open("stuff.txt", "r").each_line do |line| #each line saves memory, especially for big files
	puts line
end	

#write and append will create files when a file is not presented

file_out = File.open("new_stuff.txt", "w")
file_in = File.open("stuff.txt", "r")

file_in.each_line do |line| #this writes file_in to file_out one line at a time
	file_out.puts line
end
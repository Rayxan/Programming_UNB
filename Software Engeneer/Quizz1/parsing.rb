File.open("engsoft.txt", "r", :encoding => 'iso-8859-1') do |file|
    puts file.read.scan(/.\d{2}\/\d{7}.*\n/)
end

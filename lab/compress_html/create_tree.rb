def create_tree(directories, parent=".")
	directoriezs.each_pair do |dir, file|
		path = File.join(parent, dir)
		Dir.mkdir path unless file.exists? path
		files.each do |filename, contents|
			if filename.respond_to? :each_pair
				create_tree filename, path
			else
				open( File.join(path, filename), 'w'){ |f| f << contents || ""}
			end
		end
	end
end

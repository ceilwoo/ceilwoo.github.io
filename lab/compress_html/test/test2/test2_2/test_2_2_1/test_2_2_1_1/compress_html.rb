puts "------------ Compressing html... -----------------"
def compress_html(path)
	text = open(path) { |f| f.read() }
	text.gsub!(/\t|\n|\r/,'')
	open(path, 'w') { |f| f.puts text }
end
Dir["../../../../../test/**/*/*.thtml"].each { |path| compress_html(path) }	
puts "------------------ Job done --------------------"

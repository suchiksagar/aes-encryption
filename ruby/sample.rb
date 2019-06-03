require '/home/ruby/aes-sample.rb'

key = ENV['CRY_KEY']
aes = AESExample.new()
option = ARGV[0]
if option == 'e'
	raw = ENV['CRY_RAW']
	enc = aes.encryptData(key, raw)	
	print enc
else
	message = ENV['CRY_MSG']
	dec = aes.decryptData(key, message)
	p dec
end


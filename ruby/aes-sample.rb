require 'openssl'
require 'base64'

class AESExample
	def encryptData(pwd, raw)
		iv = OpenSSL::Random.random_bytes(16)
		# prepare cipher for encryption
		cipher = OpenSSL::Cipher.new('AES-128-CBC')
		cipher.encrypt
		# now set the key and iv for the encrypting cipher
		cipher.key = pwd.encode("utf-8")
		cipher.iv  = iv

		# encrypt the data!
		encrypted = '' << cipher.update(raw) << cipher.final
		return (Base64.encode64(iv + encrypted))
	end

	def decryptData(pwd, message)
	# and now we prepare to decrypt
		byte_array = Base64.decode64(message)
		iv = byte_array[0..15]
		msg = byte_array[16..-1]
		cipher = OpenSSL::Cipher.new('AES-128-CBC')
		cipher.decrypt
		cipher.key = pwd.encode('utf-8')
		cipher.iv  = iv
		# decrypt the data!
		decrypted = cipher.update(msg)
		decrypted << cipher.final()
		return decrypted
	end
end
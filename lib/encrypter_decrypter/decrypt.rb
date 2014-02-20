class EDfile < Base

 def self.decrypt(opts = {})
  obj = new(opts)
  obj.trigger_decryption
end

def trigger_decryption

  original_file_name = File.basename(@path.split('.enc').first)
  data = YAML.load_file('iv_key.yml')
  key = data[original_file_name][:key]
  iv = data[original_file_name][:iv]

  cipher = OpenSSL::Cipher.new('aes-256-cbc')
  cipher.decrypt
  cipher.key = key
  cipher.iv = iv

  buf = ""
  original_file = @path.split('.enc').first
  #encrypted_file = @path
  File.open(original_file, "wb") do |outf|
  File.open(@path, "rb") do |inf|
    while inf.read(4096, buf)
      outf << cipher.update(buf)
    end
    outf << cipher.final
  end
 end

  ap 'Holla, Decrypted!'
end

end

# encryption


# # decryption
# cipher = OpenSSL::Cipher.new('aes-256-cbc')
# cipher.decrypt
# cipher.key = key
# cipher.iv = iv # key and iv are the ones from above

# buf = ""
# File.open("file.dec", "wb") do |outf|
#   File.open("file.enc", "rb") do |inf|
#     while inf.read(4096, buf)
#       outf << cipher.update(buf)
#     end
#     outf << cipher.final
#   end
# end
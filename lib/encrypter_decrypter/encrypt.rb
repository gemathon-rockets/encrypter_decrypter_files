include Helper

class EDfile < Base

 def self.encrypt(opts = {})
  obj = new(opts)
  obj.trigger_encryption
end

def trigger_encryption
  cipher = OpenSSL::Cipher.new('aes-256-cbc')
  cipher.encrypt
  key = cipher.random_key
  iv = cipher.random_iv

  buf = ""
  #original_file = File.basename(@path)
  #encrypted_file = original_file + '.enc'
  encrypted_file = @path + '.enc'
  File.open(encrypted_file, "wb") do |outf|
    File.open(@path, "rb") do |inf|
      while inf.read(4096, buf)
        outf << cipher.update(buf)
      end
      outf << cipher.final
    end
  end
  write('iv_key.yml',{"#{File.basename(@path)}" => {iv: iv, key: key}})
  
end
end

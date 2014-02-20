$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'encrypter_decrypter_files'
  s.version     = '0.0.1'
  s.date        = '2014-02-20'
  s.summary     = "Secure your uploaded files by carrierwave"
  s.description = "A library supporting Ruby OpenSSL::Cipher and OpenSSL::PKCS5 for the file encryption and decryption"
  s.authors     = ["Ankit gupta"]
  s.email       = 'ankit.gupta8898@gmail.com'
  s.files       = [
                    "lib/encrypter_decrypter/decrypt.rb",
                    "lib/encrypter_decrypter/encrypt.rb",
                    "lib/encrypter_decrypter/base.rb",
                    "lib/encrypter_decrypter_files.rb",
                    "lib/helper.rb"]          
  s.require_paths = ["lib"]
  s.add_runtime_dependency 'awesome_print'
  s.license = 'MIT'
  s.homepage    =
    'https://github.com/ankit8898/carrierwave_encrypter_decrypter'
end
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'encrypter_decrypter_files'
  s.version     = '0.0.4'
  s.date        = '2014-02-20'
  s.summary     = "Encrypt Decrypt Any file using OpenSSL::AES"
  s.description = "Encrypt Decrypt Any file using OpenSSL::AES"
  s.authors     = ["Ankit gupta","Ekta Verma"]
  s.email       = ['ankit.gupta8898@gmail.com','eku4evr@gmail.com']
  s.files       = [
                    "lib/encrypter_decrypter/decrypt.rb",
                    "lib/encrypter_decrypter/encrypt.rb",
                    "lib/encrypter_decrypter/base.rb",
                    "lib/encrypter_decrypter_files.rb",
                    "lib/encrypter_decrypter_file/helper.rb"]          
  s.require_paths = ["lib"]
  s.add_runtime_dependency 'awesome_print'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'
  s.license = 'MIT'
  s.homepage    =
    'https://github.com/gemathon-rockets/encrypter_decrypter_files'
end
# Encrypter Decrypter Files

A Ruby Gem to Secure your files Easily Using OpenSSL::AES Standars

## Installation

	gem install encrypter_decrypter_files

Usage

**Encryption**

	Ankits-MacBook-Pro:encrypter_decrypter_files ankitgupta$ irb
	1.9.3-p448 :001 > require 'encrypter_decrypter_files'
 	=> true 
	1.9.3-p448 :002 > EDfile.encrypt(path: 'foo.txt')
 	=> 123 

The Above will store the values in a `iv_key.yml`, Eg

	foo.txt:
  	  :iv: !binary |-
        fu/JUHy+i1+Tz1NcdF2m6A==
      :key: !binary |-
        jTvX8mJDrvRA/RdyXnlgpA+5i18hMjbPX4DGaLiROFw=


**Decryption**

	Ankits-MacBook-Pro:encrypter_decrypter_files ankitgupta$ irb
	1.9.3-p448 :001 > require 'encrypter_decrypter_files'
 	=> true 
	1.9.3-p448 :002 > EDfile.decrypt(path: 'foo.txt.enc')
	"Holla, Decrypted!"
 	=> nil 


## Licensing


The gem itself is released under the MIT license

:pray:
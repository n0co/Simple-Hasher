require 'digest'

if ARGV[1] == 'sha256'
  digest = Digest::SHA256.hexdigest(ARGV[0])
  puts 'SHA256 Hashing...'
  puts
  puts digest
  puts
elsif ARGV[1] == 'sha512'
  digest = Digest::SHA512.hexdigest(ARGV[0])
  puts 'SHA512 Hashing...'
  puts  
  puts digest
  puts
elsif ARGV[1] == 'md5'
  digest = Digest::MD5.hexdigest(ARGV[0])
  puts 'MD5 Hashing...'
  puts  
  puts digest
  puts
else
  puts 'Script error. Use sha256, sha512, or md5.'
  puts 'Usage: ruby hash.rb <string> <hash_type>'
  exit 1
end


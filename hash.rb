require 'digest'
require 'colorize'

if ARGV[1] == 'sha256'
  digest = Digest::SHA256.hexdigest(ARGV[0])
  puts 'SHA256 Hashing...'.colorize(:yellow)
  puts
  puts digest
  puts
elsif ARGV[1] == 'sha512'
  digest = Digest::SHA512.hexdigest(ARGV[0])
  puts 'SHA512 Hashing...'.colorize(:yellow)
  puts  
  puts digest
  puts
elsif ARGV[1] == 'md5'
  digest = Digest::MD5.hexdigest(ARGV[0])
  puts 'MD5 Hashing...'.colorize(:yellow)
  puts  
  puts digest
  puts
else
  puts 'Script error. Use sha256, sha512, or md5.'.colorize(:light_red)
  puts 'Usage: ruby hash.rb <string> <hash_type>'.colorize(:green)
  exit 1
end


require 'rubygems'
require 'couchbase'

client = Couchbase.new "http://33.33.33.10:8091/pools/default/bucket/newbucket",
  :username => 'vagrant',
  :password => 'vagrant'

client.quiet = false
begin
    spoon = client.get "spoon"
      puts spoon
rescue Couchbase::Error::NotFound => e
    puts "There is no spoon."
      client.set "spoon", "Hello World!", :ttl => 10
end

client = Couchbase.new "http://33.33.33.11:8091/pools/default/bucket/newbucket",
  :username => 'vagrant',
  :password => 'vagrant'

client.quiet = false
begin
    spoon = client.get "spoon"
      puts spoon
rescue Couchbase::Error::NotFound => e
    puts "There is no spoon."
      client.set "spoon", "Hello World!", :ttl => 10
end


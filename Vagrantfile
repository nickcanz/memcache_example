# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |all_config|
  all_config.vm.define :server_one do |config|
    config.vm.box = "base_redux"
    config.vm.forward_port 8091, 8091
    config.vm.network :hostonly, "33.33.33.10"
    config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "~/development/cookbooks"
      chef.add_recipe "couchbase"
      chef.add_recipe "couchbase::startbucket"
    end
  end

  all_config.vm.define :server_two do |config|
    config.vm.box = "base_redux"
    config.vm.forward_port 8091, 8092
    config.vm.network :hostonly, "33.33.33.11"
    config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "~/development/cookbooks"
      chef.add_recipe "couchbase"
      chef.add_recipe "couchbase::joincluster"
    end
  end

  all_config.vm.define :server_three do |config|
    config.vm.box = "base_redux"
    config.vm.forward_port 8091, 8093
    config.vm.network :hostonly, "33.33.33.12"
    config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "~/development/cookbooks"
      chef.add_recipe "couchbase"
      chef.add_recipe "couchbase::joincluster"
    end
  end
end

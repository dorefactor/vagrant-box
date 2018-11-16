# -*- mode: ruby -*-
# vi: set ft=ruby :
require 'yaml'

SETTINGS = YAML.load_file 'settings.yml'
VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Configuration
  config.vm.box = 'peru/ubuntu-18.04-desktop-amd64'
  config.vm.hostname = SETTINGS['virtual_machine_name']

  # Provider
  config.vm.provider 'virtualbox' do |vb|
    vb.cpus = 2
    vb.memory = '4096'
    vb.name = SETTINGS['virtual_machine_name']
    vb.gui = true
  end

  # Synced Folders
  config.vm.synced_folder SETTINGS['synced_folder_application_addons'], '/home/vagrant/workspace'

  # Shell Provision
  config.vm.provision 'shell', path: './scripts/configure.sh'

end

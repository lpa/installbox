installbox
==========

This Puppet module will install
* fail2ban
* git

Tested on ubuntu 12.04 

## I want to test it 

Install virtualbox  
https://www.virtualbox.org/wiki/Downloads

Install vagrant  
`gem install vagrant`  
or http://downloads.vagrantup.com/tags/v1.0.3

Get a base VM ubuntu 12.04  
`vagrant box add ubuntu-12.04 http://files.vagrantup.com/precise64.box`

Clone it   
`git clone git@github.com:lpa/installbox`

Run it   
`cd installbox`   
`vagrant up`    
First VM import can take a minute

Access your VM to ckeck    
`vagrant ssh`


#!/bin/sh
echo "Installing modules, files, states, and pillars to the salt master."
sudo cp modules/* /srv/salt/_modules/
sudo cp file/* /srv/salt/
sudo cp states/* /srv/salt/
sudo cp pillars/* /srv/pillar/

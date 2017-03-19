# bitlbee.repo:
#   pkgrepo.managed:
#     - humanname: Bitlbee-Repo
#     - name: deb http://ftp.debian.org/debian jessie-backports main

install_nerdbot:
  pkg.installed:
    - pkgs:
      - irssi
      # - bitlbee
      # - bitlbee-dev
      # - bitlbee-libpurple
      # - bitlbee-facebook

start bitlbee:
  service.running:
    - name: bitlbee
    - enable: True
    - require:
      - pkg: install_nerdbot

start nerdbot:
  service.running:
    - name: nerdbot
    - enable: True
    - require:
      - pkg: install_nerdbot



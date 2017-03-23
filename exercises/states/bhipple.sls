# State for my user
install_user_pkgs:
  pkg.installed:
    - name: zsh
    - name: git

bhipple_group:
  group.present:
    - name: bhipple

add_user_bhipple:
  user.present:
    - name: bhipple
    - fullname: Benjamin Hipple
    - shell: /bin/zsh
    - home: /home/bhipple
    - groups:
      - bhipple
      - sudo
    - require:
      - pkg: install_user_pkgs
      - group: bhipple_group

bhipple_public_key:
  file.managed:
    - user: bhipple
    - group: bhipple
    - name: /home/bhipple/.ssh/authorized_keys
    - mode: 600
    - makedirs: True
    - contents: |
        ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCuP/Z+l3KI5g0SmZ4s0vv3N2OdUEAwc9sBuFG1d8XYLbJEaaTONBGh2sSzMjqNnetyl1e9lz/Yn/406gksjhweR6A1AqTd/Ty8CKzzOD7YCu0QBMOo+hgHxO3LQS+WbB3ygAjZ/uzakSDwaAxHQcZgRiRNFIf+zadQgJ+4sVB2NDTGL16L1Ok252NpBfGdnojU51E2ZnQLj6Dq5ZgrpLrfZEAJkPqcmcjl2IhoFDveSxTvvmoxBAIbZYgHdQY/hSz7k3UOBIBNNV2u6XxW1pr35ySwJVGFav+6KiZR1IaHAka9GW8EeX0Au9QEmUVIZcdWrJHOB4xO4sgSCKaiI7bB

# Install my dotfiles
clone_dotfiles:
  git.latest:
    - name: git://github.com/bhipple/dotfiles.git
    - rev: master
    - target: /home/bhipple/dotfiles
    - user: bhipple
    - submodules: True
    - require:
      - pkg: install_user_pkgs
      - user: add_user_bhipple

install_dotfiles_if_changed:
  cmd.run:
    - name: 'echo "You will need to run ./install"'
    - cwd: '/home/bhipple/dotfiles'
    - user: bhipple

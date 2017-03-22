# State for my user

bhipple:
  user.present:
    - fullname: Benjamin Hipple
    - shell: /bin/zsh
    - home: /home/bhipple
    - groups:
      - bhipple
      - sudo
  file.managed:
    - user: bhipple
    - group: bhipple
    - name: /home/bhipple/.ssh/authorized_keys
    - mode: 600
    - makedirs: True
    - contents: |
        ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCuP/Z+l3KI5g0SmZ4s0vv3N2OdUEAwc9sBuFG1d8XYLbJEaaTONBGh2sSzMjqNnetyl1e9lz/Yn/406gksjhweR6A1AqTd/Ty8CKzzOD7YCu0QBMOo+hgHxO3LQS+WbB3ygAjZ/uzakSDwaAxHQcZgRiRNFIf+zadQgJ+4sVB2NDTGL16L1Ok252NpBfGdnojU51E2ZnQLj6Dq5ZgrpLrfZEAJkPqcmcjl2IhoFDveSxTvvmoxBAIbZYgHdQY/hSz7k3UOBIBNNV2u6XxW1pr35ySwJVGFav+6KiZR1IaHAka9GW8EeX0Au9QEmUVIZcdWrJHOB4xO4sgSCKaiI7bB

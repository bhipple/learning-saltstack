base:
  '*':
    - bhipple
  'brobot*':
    - users_and_ssh
  'os_family:debian':
    - match: grain
    - users_and_ssh

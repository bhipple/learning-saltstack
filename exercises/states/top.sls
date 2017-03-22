base:
  'brobot*':
    - apache
  'os_family:debain':
    - match: grain
    - users_and_ssh

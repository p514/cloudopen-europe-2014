generic_user:
  user.present:
    - name: {{ pillar['users']['stg_user'] }}
    - shell: /bin/bash
    - home: /home/{{ pillar['users']['stg_user'] }}
    - uid: 5001
    - gid: {{ pillar['groups']['gid'] }}
    - password: {{ pillar['users']['stg_user_passwd'] }}

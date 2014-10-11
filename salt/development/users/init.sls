{% if grains['server_type'] == 'app' %}
{% set user_list = 'dev_app_user_list' %}
{% elif grains['server_type'] == 'db' %}
{% set user_list = 'dev_db_user_list' %}
{% endif %}

{% for user, details in pillar[user_list].iteritems() %}
{{ user }}:
  user.present:
    - home: /home/{{ user }}
    - uid: {{ details['uid'] }}
    - password: {{ details['passwd'] }}
    - shell: /bin/bash
    - gid: {{ pillar['dev_group']['gid'] }}
{% endfor %}

generic_group:
  group.present:
    {% if grains['server_type'] == 'app' %}
    - name: {{ pillar['groups']['name']['app_group'] }}
    {% elif grains['server_type'] == 'db' %}
    - name: {{ pillar['groups']['name']['db_group'] }}
    {% endif %}
    - gid: {{ pillar['groups']['gid'] }}

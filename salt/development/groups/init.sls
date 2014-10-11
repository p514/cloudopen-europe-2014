{{ pillar['dev_group']['name'] }}:
  group.present:
    - gid: {{ pillar['dev_group']['gid'] }}

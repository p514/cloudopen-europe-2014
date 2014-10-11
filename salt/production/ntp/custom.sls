ntp_package:
  pkg.installed:
    - name: ntp

/etc/ntp.conf:
  file.managed:
    - source: salt://ntp/files/ntp.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - context:
      ntp_server: {{ pillar['ntp']['server'] }}
    - require:
      - pkg: ntp_package

ntp_service:
  service:
    - name: ntpd
    - running
    - enable: True
    - require:
      - file: /etc/ntp.conf
    - watch:
      - file: /etc/ntp.conf

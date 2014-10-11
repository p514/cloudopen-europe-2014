users:
  {% if grains['server_type'] == 'app' %}
  stg_user: stg-app
  stg_user_passwd: '$1$Kh.mg961$d7YPg5OmwHqja5hksCGry0'
  {% elif grains['server_type'] == 'db' %}
  stg_user: stg-db
  stg_user_passwd: '$1$Kh.mg961$d7YPg5OmwHqja5hksCGry0'
  {% endif %}
  uid: 5001

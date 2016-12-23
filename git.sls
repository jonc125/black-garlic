{% for key, value in pillar.get('git_global', {}).items() %}
user config {{key}}:
  git.config_set:
    - name: {{key}}
    - value: {{value}}
    - global: True
{% endfor      %}

{{grains['userhome']}}/.config:
  file.directory:
    - user: {{grains['user']}}
    - dir_mode: 755

{{grains['userhome']}}/.config/git:
  file.directory:
    - user: {{grains['user']}}
    - dir_mode: 700

{{grains['userhome']}}/.config/git/ignore:
  file.managed:
    - source: salt://files/gitignore
    - mode: 600
    - user: {{grains['user']}}

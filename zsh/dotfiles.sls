{% set home = grains['userhome'] %}
{% set salted = pillar['zsh']['salted'] %}

{{home}}/.cache/zsh:
  file.directory

{{salted}}:
  file.directory

{{salted}}/antigenrc:
  file.managed:
    - source: salt://files/zsh/antigenrc
    - mode: 600

{{home}}/.config/liquidpromptrc:
  file.managed:
    - source: salt://files/zsh/liquidpromptrc
    - mode: 644

{% for filename in ['zprofile', 'zshrc'] %}
{{home}}/.{{filename}}:
  file.managed:
    - source: salt://files/zsh/{{filename}}
    - mode: 600
    - template: jinja
    - default:
      home: {{home}}
      salted: {{salted}}
{% endfor %}

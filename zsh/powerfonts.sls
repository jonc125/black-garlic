{% set user = grains['user'] %}
{% set home = grains['userhome'] %}
{% set location = pillar['condiment_build_dir'] + "/powerline-fonts" %}

powerfonts:
  github.latest:
    - name: powerline/fonts
    - target: {{location}}
    - submodules: True

  cmd.run:
    - creates: {{home}}/Library/Fonts/DejaVu Sans Mono for Powerline.ttf
    - name: bash {{location}}/install.sh
    - watch:
      - github: powerfonts

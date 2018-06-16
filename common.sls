include:
  - timezone
  - hostsfile
  - resolver
  - vim
  - salt.pkgrepo

{% set to_be_installed_pkgs = pillar.get('common_packages', []) %}
common_packages:
  pkg.installed:
    - order: 1
    - pkgs:
{% for things in to_be_installed_pkgs %}
      - {{ things }}
{% endfor %}

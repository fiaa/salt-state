include:
  - timezone
  - hostsfile
  - resolver
  - vim

{% set to_be_installed_pkgs = pillar.get('common_packages', []) %}
common_packages:
  pkg.installed:
    - pkgs:
{% for things in to_be_installed_pkgs %}
      - {{ things }}
{% endfor %}

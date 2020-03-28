# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_config_file = tplroot ~ '.config.file' %}
{%- from tplroot ~ "/map.jinja" import jmeter with context %}

include:
  - {{ sls_config_file }}

jmeter-service-running-service-running:
  service.running:
    - name: {{ jmeter.service.name }}
    - enable: True
    - require:
      - sls: {{ sls_config_file }}

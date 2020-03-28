# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import jmeter with context %}

jmeter-service-clean-service-dead:
  service.dead:
    - name: {{ jmeter.service.name }}
    - enable: False

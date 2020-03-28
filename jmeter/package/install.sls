# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import jmeter with context %}

jmeter-package-install-pkg-installed:
  pkg.installed:
    - name: {{ jmeter.pkg.name }}

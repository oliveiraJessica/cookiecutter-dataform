#! /usr/bin/env bash

rm -rf ../definitions/
rm -rf ../includes/
rm ../dataform.json || true
rm ../environments.json || true

#TEMPLATE_PATH='{{ cookiecutter._template }}'
#FOLDER=\{\{cookiecutter\ and\ \"root\"\}\}

#TODO arrumar o path do template pra pegar esse path quando o template é http
TEMPLATE_PATH=~/.cookiecutters
FOLDER=cookiecutter-dataform

{% for name in cookiecutter.environments.keys() %}
cp "${TEMPLATE_PATH}/${FOLDER}/dataform.json" "../${TEMPLATE_PATH}/${FOLDER}/dataform_{{ name }}.json"
{% endfor %}

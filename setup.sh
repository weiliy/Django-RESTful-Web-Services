#!/bin/bash

function init_venv() {
  echo 'Init venv...'
	python3 -m venv .venv
  active_venv
  echo 'Upgrade pip...'
	pip install --upgrade pip setuptools wheel
}

function install_requiremnts () {
  active_venv
  echo 'Install requirments...'
	pip install -r requirements.txt
}

function active_venv() {
  echo 'Active venv...'
	source .venv/bin/activate
}

function run_migrate() {
	python manage.py migrate
}

function run_runserver {
	python manage.py runserver 0:$1
}

case "$1" in
  init)
    init_venv
    ;;
  install)
    install_requiremnts 
    ;;
  start)
    active_venv
    run_migrate
    shift
    run_runserver $1
    ;;
  *)
    active_venv
    exec "$@"
    ;;
esac

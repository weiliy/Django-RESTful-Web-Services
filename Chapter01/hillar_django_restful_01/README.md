## Issue: Python 3.7 and Django - "SyntaxError: Generator expression must be..."

```
root@7ca3926624e7:/app/Chapter01/hillar_django_restful_01/my_restful01# python manage.py startapp toys
Traceback (most recent call last):
  File "manage.py", line 22, in <module>
    execute_from_command_line(sys.argv)
  File "/app/.venv/lib/python3.7/site-packages/django/core/management/__init__.py", line 364, in execute_from_command_line
    utility.execute()
  File "/app/.venv/lib/python3.7/site-packages/django/core/management/__init__.py", line 338, in execute
    django.setup()
  File "/app/.venv/lib/python3.7/site-packages/django/__init__.py", line 27, in setup
    apps.populate(settings.INSTALLED_APPS)
  File "/app/.venv/lib/python3.7/site-packages/django/apps/registry.py", line 85, in populate
    app_config = AppConfig.create(entry)
  File "/app/.venv/lib/python3.7/site-packages/django/apps/config.py", line 94, in create
    module = import_module(entry)
  File "/usr/local/lib/python3.7/importlib/__init__.py", line 127, in import_module
    return _bootstrap._gcd_import(name[level:], package, level)
  File "<frozen importlib._bootstrap>", line 1006, in _gcd_import
  File "<frozen importlib._bootstrap>", line 983, in _find_and_load
  File "<frozen importlib._bootstrap>", line 967, in _find_and_load_unlocked
  File "<frozen importlib._bootstrap>", line 677, in _load_unlocked
  File "<frozen importlib._bootstrap_external>", line 728, in exec_module
  File "<frozen importlib._bootstrap>", line 219, in _call_with_frames_removed
  File "/app/.venv/lib/python3.7/site-packages/django/contrib/admin/__init__.py", line 4, in <module>
    from django.contrib.admin.filters import (
  File "/app/.venv/lib/python3.7/site-packages/django/contrib/admin/filters.py", line 10, in <module>
    from django.contrib.admin.options import IncorrectLookupParameters
  File "/app/.venv/lib/python3.7/site-packages/django/contrib/admin/options.py", line 12, in <module>
    from django.contrib.admin import helpers, widgets
  File "/app/.venv/lib/python3.7/site-packages/django/contrib/admin/widgets.py", line 151
    '%s=%s' % (k, v) for k, v in params.items(),
    ^
SyntaxError: Generator expression must be parenthesized
```

*Solution*:

* [Chapter 1: Python 3.7 and Django - "SyntaxError: Generator expression must be..." · Issue #99 · hjwp/Book-TDD-Web-Dev-Python](https://github.com/hjwp/Book-TDD-Web-Dev-Python/issues/99)
* [Refs #28814 -- Fixed "SyntaxError: Generator expression must be paren… · django/django@931c60c](https://github.com/django/django/commit/931c60c5216bd71bc11f489e00e063331cf21f40)
> To fix this, edit this file: [virtual env directory]/lib/python3.7/site-packages/django/contrib/admin/widgets.py
> 
> delete the following lines [150-153]
> 
>         related_url += '?' + '&amp;'.join(
>                     '%s=%s' % (k, v) for k, v in params.items(),
>                 )
> and add this in place:
> 
> related_url += '?' + '&amp;'.join('%s=%s' % (k, v) for k, v in params.items())
> 
> ref: django/django@931c60c

But as Django 1.11 has EOL, for avoid other issue, I am going to downgrade to python 3.6

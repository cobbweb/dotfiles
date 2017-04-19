## Custom Stuff for Django's CLI
# set pythonpath and settings module
set shorthand_path /Users/cobbweb/Github/Shorthand/ShorthandPro
set -gx PYTHONPATH $shorthand_path
set -gx DJANGO_SETTINGS_MODULE Shorthand.settings.local

# make manage.py usable from anywhere while the virtualenv is active
function manage
  python $shorthand_path/manage.py $argv
end

# set up autocompletions
function list_django_commands
  manage | python -c "import sys; print '\n'.join([c.replace('    ', '') for c in sys.stdin.read().split('Available subcommands')[1].split('\n') if c.startswith('    ')])"
end

complete -x -c manage -a "(list_django_commands)"

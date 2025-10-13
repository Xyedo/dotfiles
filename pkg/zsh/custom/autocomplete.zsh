
# makefile
_makefile_targets()
{
  local cur=${COMP_WORDS[COMP_CWORD]}
  local targets=$(grep '^[^#[:space:]].*:' Makefile | cut -d ':' -f 1)
  COMPREPLY=($(compgen -W "$targets" -- $cur))
}

_vcpkg_completions()
{
  local vcpkg_executable=${COMP_WORDS[0]}
  local remaining_command_line=${COMP_LINE:(${#vcpkg_executable}+1)}
  COMPREPLY=($(${vcpkg_executable} autocomplete "${remaining_command_line}"))
}
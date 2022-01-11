command_not_found_handler() {
  local pkgs cmd="$1"

  pkgs=(${(f)"$(pkgfile -b -v -- "$cmd" 2>/dev/null)"})
  if [[ -n "$pkgs" ]]; then
    GET_REPO=(${(f)"$(pkgfile -b -v -- "$cmd" | awk '{print $1}')"})
    GET_VERSION=(${(f)"$(pkgfile -b -v -- "$cmd" | awk '{print $2}')"})
    GET_PATH=(${(f)"$(pkgfile -b -v -- "$cmd" | awk '{print $3}')"})
    printf "package [${COLOR_YELLOW}%s${COLOR_DEFAULT}] may be found in the following packages:\n\n" "$cmd"
    printf "  ${COLOR_GREEN}%s              %s              %s${COLOR_DEFAULT}\n\n" "Repository" "Version" "PATH"
    printf "  %-14s    -->   %-9s   -->   %-s\n\n" ${GET_REPO} ${GET_VERSION} ${GET_PATH}
    #printf '  %s\n' $pkgs[@]
  else
    printf 'zsh: command not found: %s\n' "$cmd"
  fi 1>&2

  return 127
}

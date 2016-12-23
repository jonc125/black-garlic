{% set fundir = salt['funwith.defaults']('modulefiles') %}
{% set salted = grains['userhome'] + "/.salted" %}
zsh:
  salted: {{salted}}
  envvar:
      DEFAULT_USER: $(whoami)
      CFLAGS: "-Wall"
      CXXFLAGS: "$CFLAGS"
      EDITOR: nano
      VISUAL: nano
      CLICOLOR: 1
      HISTFILE: ~/.zhistory
      HISTSIZE: 100000
      SAVEHIST: 100000
      TERM: screen-256color
      EVENT_NOKQUEUE: 1 # problem with tmux
      # GNU coreutils
      PATH: /usr/local/opt/coreutils/libexec/gnubin:${PATH}
      MANPATH: /usr/local/opt/coreutils/libexec/gnuman:${MANPATH}
      # Dashboard settings
      ORACLE_HOME: /opt/oracle/instantclient_12_1
      PATH: ${ORACLE_HOME}:${PATH}
  alias:
      la: ls -A
      ll: ls -l
      rm: rm -i
      mv: mv -i
  options:
    - SHARE_HISTORY
    - HIST_FIND_NO_DUPS
    - HIST_IGNORE_SPACE
    - HIST_NO_STORE
    - HIST_SAVE_NO_DUPS
    - HIST_REDUCE_BLANKS
  settings:
    - completions: |
        fpath=({{salted}}/completions $fpath)
        autoload -U compinit
        compinit -U
    - setup_funwith: |
        [[ -e /usr/local/Cellar/lmod/5.9.3/init/zsh ]] && \
          source /usr/local/Cellar/lmod/5.9.3/init/zsh
        module use $HOME/.funwith
    - spack: |
         export SPACK_ROOT={{salt['spack.defaults']('directory')}}
         source $SPACK_ROOT/share/spack/setup-env.sh
  completions:
    - funwith: |
        _arguments "1: :($(/usr/bin/basename -s .lua {{fundir}}/*.lua))"

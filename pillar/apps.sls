cask_apps:
  - anaconda
  - google-drive
  - mendeley-desktop
  - shiftit
  - virtualbox
  # - zotero
  # - slack
  # - iterm2
  # - google-chrome
  # - dropbox
  # - karabiner-elements
  # - julia
  # - dash
  # - caffeine

brew_apps:
  - git
  - gcc
  - python
  - python3
  - coreutils
  - readline
  - wget
  - clang-format:
      options: [--HEAD]
  - universal-ctags:
      options: [--HEAD]
      taps: universal-ctags/universal-ctags
  - llvm:
      options: ['--with-lldb']
  # - docker-machine-driver-xhyve
  - docker

# Dictionary of extra condiments
condiments:
  # sub-directory for the extra condiment
  chilly:
    # where to find the condiment on github
    # needed only if different from the sub-directory name
    github: mdavezac/CondimentStation
    # optional tag/branch/revision
    # see salt.states.git.latest for description
    branch: blackgarlic
    rev: blackgarlic
    # can also be given a full git location
    # git: https://...
    # and anyother argument to salt.states.git.latest

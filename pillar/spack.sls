spack:
  # whether to add stuff ~/.salted/zprofile so spack is loaded automatically
  # spack needs to be loaded one way or another, see spack itself for help
  add_to_zprofile: False
  # a file with the compilers spack can access
  compilers_file: salt://files/spack/compilers.yaml
  # a file with the external spack packages (e.g. cmake installed from brew)
  external_packages: salt://files/spack/packages.yaml
  # external spack repos
  repos:
      UCL-RITS: UCL-RITS/spack_packages
  # Location of the spack repo. Defaults to inside the build directory
  # directory: {{grains['userhome']}}/spack
  # Location of the spack configuration
  # config_dir: {{grains['userhome']}}/.spack
  # Wether to install stuff in the repo or in user files
  default_config_location: site
  # Where do external repos go
  # repo_prefix: {{grains['userhome']}}/.spack_repos

# default compiler suite
# it should match something a suite in compilers.yaml file
compiler: clang

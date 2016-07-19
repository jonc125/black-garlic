Exemplar condiment for CondimentStation
---------------------------------------

This exemplar defines a minimum set of files to define a condiment.

- `top.sls` in the root directory points to other state files defining the
  state on your computer. It can be left empty.
- `pillar` contains information on how to setup spack, projects, other
  condiments, etc... Look to the files there for more information.
- `projects` should contain individual state files for each project of
  interest. There is an example which extends the condiment-station project
  from CondimentStation

See CondimentStation itself for usage examples.

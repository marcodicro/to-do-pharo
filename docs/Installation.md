# Installation

## Basic Installation

You can load **ToDo Application** evaluating:
```smalltalk
Metacello new
	baseline: 'todopharo';
	repository: 'github://marcodicro/to-do-pharo:master/source';
	load.
```
>  Change `master` to some released version if you want a pinned version

## Using as dependency

In order to include **ToDo Application** as part of your project, you should reference the package in your product baseline:

```smalltalk
setUpDependencies: spec

	spec
		baseline: 'todopharo'
			with: [ spec
				repository: 'github://marcodicro/to-do-pharo:v{XX}/source';
				loads: #('Deployment') ];
		import: 'todopharo'.
```
> Replace `{XX}` with the version you want to depend on

```smalltalk
baseline: spec

	<baseline>
	spec
		for: #common
		do: [ self setUpDependencies: spec.
			spec package: 'My-Package' with: [ spec requires: #('todopharo') ] ]
```

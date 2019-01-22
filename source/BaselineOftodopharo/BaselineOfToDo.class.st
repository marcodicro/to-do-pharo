Class {
	#name : #BaselineOfToDo,
	#superclass : #BaselineOf,
	#category : #BaselineOftodopharo
}

{ #category : #baselines }
BaselineOfToDo >> baseline: spec [
  <baseline>
  spec
    for: #common
    do: [
     spec
        package: 'ToDo';
        package: 'ToDo-Tests' with: [ spec requires: #('ToDo')] ]
]

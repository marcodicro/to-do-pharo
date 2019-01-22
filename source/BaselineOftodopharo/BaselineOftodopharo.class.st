Class {
	#name : #BaselineOftodopharo,
	#superclass : #BaselineOf,
	#category : #BaselineOftodopharo
}

{ #category : #baselines }
BaselineOftodopharo >> baseline: spec [
  <baseline>
  spec
    for: #common
    do: [
     spec
        package: 'ToDo';
        package: 'ToDo-Tests' with: [ spec requires: #('ToDo')] ]
]

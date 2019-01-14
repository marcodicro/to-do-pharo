Class {
	#name : #TaskManager,
	#superclass : #Object,
	#instVars : [
		'tasks'
	],
	#category : #ToDo
}

{ #category : #managing }
TaskManager >> allTasks [
	 ^tasks
]

{ #category : #initialization }
TaskManager >> initialize [

	tasks := OrderedCollection new
]

{ #category : #managing }
TaskManager >> startManaging: aTask [ 
	tasks add: aTask
]

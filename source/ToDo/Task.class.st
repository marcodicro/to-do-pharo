Class {
	#name : #Task,
	#superclass : #Object,
	#instVars : [
		'title',
		'description'
	],
	#category : #ToDo
}

{ #category : #'instance creation' }
Task class >> titled: aTitle about: aDescription [ 
	   ^self new initializeTitled: aTitle about: aDescription
]

{ #category : #accessing }
Task >> description [
	^ description
]

{ #category : #initialization }
Task >> initializeTitled: aTitle about: aDescription [ 
	title := aTitle.
	description := aDescription
]

{ #category : #accessing }
Task >> title [
	^ title
]

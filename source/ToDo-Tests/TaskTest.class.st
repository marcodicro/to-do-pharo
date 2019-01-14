Class {
	#name : #TaskTest,
	#superclass : #TestCase,
	#category : #'ToDo-Tests'
}

{ #category : #tests }
TaskTest >> testAccessing [

|orderFoodTask|

orderFoodTask := Task titled: 'Order Food' about: 'Order food at 11:30'.
self assert: orderFoodTask title equals: 'Order Food';
assert: orderFoodTask description equals: 'Order food at 11:30'.
]

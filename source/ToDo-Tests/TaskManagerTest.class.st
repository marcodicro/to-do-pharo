"
A TaskManagerTest is a test class for testing the behavior of TaskManager
"
Class {
	#name : #TaskManagerTest,
	#superclass : #TestCase,
	#instVars : [
		'taskManager'
	],
	#category : #'ToDo-Tests'
}

{ #category : #running }
TaskManagerTest >> setUp [

	taskManager := TaskManager new
]

{ #category : #tests }
TaskManagerTest >> testAddingNewTask [

	| orderFoodTask tasks |

	orderFoodTask := Task
		titled: 'Order Food'
		about: 'Order food at 11:30'.
	taskManager startManaging: orderFoodTask.
	tasks := taskManager allTasks.
	self assert: tasks size equals: 1.
	self assert: tasks first equals: orderFoodTask
]

{ #category : #tests }
TaskManagerTest >> testChangeTask [

	| orderFoodTask orderBurgerTask tasks |

	orderFoodTask := Task
		titled: 'Order Food'
		about: 'Order food at 11:30'.
	taskManager startManaging: orderFoodTask.
	orderBurgerTask := Task
		titled: 'Order Burger'
		about: 'Order burger at 11:30'.
	taskManager updateTask: orderFoodTask with: orderBurgerTask.
	tasks := taskManager allTasks.
	self assert: tasks size equals: 1.
	self assert: tasks first equals: orderBurgerTask
]

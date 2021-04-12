Class {
	#name : #EConstant,
	#superclass : #EExpression,
	#instVars : [
		'value'
	],
	#category : #Expressions
}

{ #category : #accessing }
EConstant class >> value: anInteger [
	^ self new value: anInteger
]

{ #category : #visiting }
EConstant >> acceptVisitor: aVisitor [
	^ aVisitor visitEConstant: self
]

{ #category : #getter }
EConstant >> evaluateWith: anObject [
	^ value.
]

{ #category : #getter }
EConstant >> negated [
	^ ENegation new expression: self.
]

{ #category : #printing }
EConstant >> printOn: aStream [
	aStream nextPutAll: value printString
]

{ #category : #evaluating }
EConstant >> value [ 
	^ value
]

{ #category : #setter }
EConstant >> value: anInteger [ 
	value := anInteger.
]

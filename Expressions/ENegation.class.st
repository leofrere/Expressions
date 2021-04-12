Class {
	#name : #ENegation,
	#superclass : #EExpression,
	#instVars : [
		'expression'
	],
	#category : #Expressions
}

{ #category : #'instance creation' }
ENegation class >> expression: anEConstant [
	^ self new expression: anEConstant
]

{ #category : #visiting }
ENegation >> acceptVisitor: aVisitor [
	^ aVisitor visitENegation: self
]

{ #category : #getter }
ENegation >> evaluateWith: aDictionnary [ 
	^ (expression evaluateWith: aDictionnary ) negated
]

{ #category : #getter }
ENegation >> expression [
	^ expression
]

{ #category : #setter }
ENegation >> expression: anEConstant [ 
	expression := anEConstant.
]

{ #category : #getter }
ENegation >> negated [
	^ EConstant value: (self evaluateWith: nil) negated
]

{ #category : #printing }
ENegation >> printOn: aStream [
	aStream nextPutAll: '- '.
	expression printOn: aStream
]

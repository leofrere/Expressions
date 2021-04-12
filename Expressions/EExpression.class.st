Class {
	#name : #EExpression,
	#superclass : #Object,
	#category : #Expressions
}

{ #category : #visiting }
EExpression >> acceptVisitor: aVisitor [
	^ self subclassResponsibility
]

{ #category : #arithmetic }
EExpression >> negated [
	^ ENegation new expression: self
]

Class {
	#name : #EBinaryExpression,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #getter }
EBinaryExpression >> left [
	^ left
]

{ #category : #setter }
EBinaryExpression >> left: anEConstant [ 
	left := anEConstant.
]

{ #category : #printing }
EBinaryExpression >> operatorString [
	^ self subclassResponsibility
]

{ #category : #printing }
EBinaryExpression >> printOn: aStream [
	aStream nextPutAll: '( '.
	left printOn: aStream.
	aStream nextPutAll: self operatorString.
	right printOn: aStream.
	aStream nextPutAll: ' )'.
]

{ #category : #getter }
EBinaryExpression >> right [
	^ right
]

{ #category : #setter }
EBinaryExpression >> right: anEConstant [ 
	right := anEConstant.
]
